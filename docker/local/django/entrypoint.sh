#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

# Use environment variable substitution in Python with os.environ.get
python << END 
import os
import sys
import time
import psycopg2

suggest_unrecoverable_after = 30
start = time.time()

while True:
    try:
        psycopg2.connect(
            dbname=os.environ.get("POSTGRES_DB"),
            user=os.environ.get("POSTGRES_USER"),
            password=os.environ.get("POSTGRES_PASSWORD"),
            host=os.environ.get("POSTGRES_HOST"),
            port=os.environ.get("POSTGRES_PORT")
        )
        break
    except psycopg2.OperationalError as error:
        sys.stderr.write("Waiting for PostgreSQL to become available...\n")
        if time.time() - start > suggest_unrecoverable_after:
            sys.stderr.write("This is taking longer than expected. The following exception may be indicative of an unrecoverable error: '{}' \n".format(error))
        time.sleep(1)
END

>&2 echo "PostgreSQL is available"

exec "$@"
