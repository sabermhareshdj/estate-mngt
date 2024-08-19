
pipenv shell 
تشغيل البيئه الوهمية


[packages]
django = "==4.2.11"
python-dotenv = "==1.0.1"
djangorestframework = "==3.15.0"
django-autoslug = "==1.9.9"
django-countries = "==7.5.1"
django-phonenumber-field = "==7.3.0"
phonenumbers = "==8.13.32"
drf-yasg = "==1.21.7"
pillow = "==10.2.0"
argon2-cffi = "==23.1.0"
djoser = "==2.2.2"
django-taggit = "==5.0.1"
django-filter = "==24.1"
django-celery-email = "==3.0.0"
cloudinary = "==1.39.1"
django-celery-beat = "==2.6.0"
redis = "==5.0.3"
celery = "==5.3.6"

______________________________________________________________________________________________________________________

Django (django==4.2.11):

هو إطار عمل ويب مكتوب بلغة Python، يُستخدم لبناء تطبيقات الويب بسرعة وفعالية. يقدم Django العديد من الميزات الجاهزة مثل إدارة قواعد البيانات، مصادقة المستخدمين، وإنشاء صفحات الويب.

python-dotenv (python-dotenv==1.0.1):
مكتبة تُستخدم لتحميل المتغيرات من ملف .env إلى بيئة Python. هذا مفيد لتخزين المتغيرات السرية مثل مفاتيح API وكلمات المرور خارج الكود المصدر.

djangorestframework (djangorestframework==3.15.0):
مكتبة تُستخدم لبناء واجهات برمجة تطبيقات (APIs) باستخدام Django. يوفر إطار عمل RESTful سهل الاستخدام لدعم تطوير واجهات برمجة تطبيقات REST.

django-autoslug (django-autoslug==1.9.9):
مكتبة تُستخدم لإنشاء وتحويل النصوص إلى سلاسل صالحة للاستخدام في عناوين URL (مثل "slugs") تلقائيًا بناءً على حقل معين في النموذج.

django-countries (django-countries==7.5.1):
مكتبة تُضيف دعمًا لحقول الدول في نماذج Django، مما يتيح استخدام قائمة دول موحدة مع أكواد الدول القياسية.

django-phonenumber-field (django-phonenumber-field==7.3.0):
مكتبة تُستخدم للتحقق من صحة أرقام الهواتف وتنسيقها ضمن نماذج Django. تُدمج مع مكتبة phonenumbers.

phonenumbers (phonenumbers==8.13.32):
مكتبة لتفسير والتحقق من أرقام الهواتف، دعم أنواع متعددة من تنسيقات الأرقام، والتأكد من أن الرقم صالح.

drf-yasg (drf-yasg==1.21.7):
مكتبة تُستخدم لإنشاء توثيق تلقائي لـ APIs المبنية باستخدام Django REST Framework، عادةً بتنسيق Swagger/OpenAPI.

pillow (pillow==10.2.0):
مكتبة لمعالجة الصور في Python، تُستخدم في Django للتعامل مع تحميل الصور، قصها، وتحويلها.

argon2-cffi (argon2-cffi==23.1.0):
مكتبة تُستخدم لتنفيذ خوارزمية التشفير Argon2، وهي واحدة من خوارزميات التشفير الأكثر أمانًا لتخزين كلمات المرور.

djoser (djoser==2.2.2):
مكتبة توفر نقاط نهاية (endpoints) جاهزة لإدارة مصادقة المستخدمين في Django REST Framework، مثل التسجيل وتغيير كلمة المرور.

django-taggit (django-taggit==5.0.1):
مكتبة تُضيف دعمًا لتصنيف العناصر (tagging) في Django، مما يتيح إضافة تصنيفات مرنة للأشياء.

django-filter (django-filter==24.1):
مكتبة لتصفية الاستعلامات في Django REST Framework، مما يتيح للمستخدمين تصفية البيانات المسترجعة من API بسهولة.

django-celery-email (django-celery-email==3.0.0):
مكتبة تُستخدم لدمج إرسال البريد الإلكتروني مع Celery، مما يسمح بإرسال البريد الإلكتروني في الخلفية لتجنب تأخير الاستجابة.

cloudinary (cloudinary==1.39.1):
مكتبة تُستخدم لدمج Django مع خدمة Cloudinary لتخزين الصور والفيديوهات ومعالجتها على السحابة.

django-celery-beat (django-celery-beat==2.6.0):
مكتبة تُستخدم لجدولة المهام في Celery باستخدام قاعدة البيانات في Django، مما يسمح بتغيير الجدولة ديناميكيًا.

redis (redis==5.0.3):
مكتبة للتعامل مع قاعدة بيانات Redis، تُستخدم عادةً كمخزن مؤقت (cache) أو كوسيط للرسائل مع Celery.

celery (celery==5.3.6):
مكتبة لتنفيذ المهام غير المتزامنة وجدولتها، تُستخدم عادةً مع Django لأداء العمليات الثقيلة مثل معالجة الصور وإرسال البريد الإلكتروني في الخلفية.

flower (flower==2.0.1):
واجهة مستخدم لمراقبة وإدارة مهام Celery، مما يوفر رؤية واضحة لحالة المهام والعمال (workers).
هذه المكتبات معًا تشكل بيئة قوية لبناء تطبيقات ويب متقدمة باستخدام Django، مع ميزات مثل إدارة المستخدمين، التعامل مع الصور، معالجة المهام في الخلفية، وتطوير APIs مرنة.


___________________________________________________________________

pipenv install --dev psycopg2-binary==2.9.9
pipenv install --dev watchfiles==0.21.0
pipenv install --dev black==24.3.0

_______________________________________________________


he command you provided is for creating a directory and multiple files in a Unix-like environment (like macOS or Linux). Here’s how you can convert it to work on Windows:

mkdir -p requirements && touch requirements/{base,local,production}.txt



for Windows (using Command Prompt):
Create the directory:

mkdir requirements
Create the files:

type nul > requirements\base.txt
type nul > requirements\local.txt
type nul > requirements\production.txt

Explanation:
mkdir requirements: Creates a new directory named requirements.
type nul > requirements\base.txt: Creates an empty file named base.txt inside the requirements directory.
type nul > requirements\local.txt: Creates an empty file named local.txt inside the requirements directory.
type nul > requirements\production.txt: Creates an empty file named production.txt inside the requirements directory.


if you are using PowerShell, you can use this command:
Converted for Windows (using PowerShell):

mkdir requirements; New-Item -Path requirements\base.txt, requirements\local.txt, requirements\production.txt -ItemType File
This command achieves the same result, creating the requirements directory and the three .txt files inside it.

__________________________________________________________________________________________________________________

macOS or Linux

mkdir -p settings && touch settings/{__inti__,base,local,production}.py

_______________________________________________________________________________________________________

https://docs.djangoproject.com/en/4.2/topics/auth/passwords/#using-argon2-with-django

PASSWORD_HASHERS = [
    "django.contrib.auth.hashers.Argon2PasswordHasher",
    "django.contrib.auth.hashers.PBKDF2PasswordHasher",
    "django.contrib.auth.hashers.PBKDF2SHA1PasswordHasher",
    "django.contrib.auth.hashers.BCryptSHA256PasswordHasher",
    "django.contrib.auth.hashers.ScryptPasswordHasher",
]
__________________________________________________________

python -c "import secrets; print(secrets.token_urlsafe(38))"

____________________________________________________________

env

SITE_NAME=""
DJANGO_SECRET_KEY=""
DJANGO_ADMIN_URL=""
EMAIL_PORT=""
EMAIL_HOST=""
DEFAULT_FROM_EMAIL=""
CELERY_FLOWER_USER=""
CELERY_FLOWER_PASSWORD=""
CELERY_BROKER_URL=""
CELERY_RESULT_BACKEND=""
POSTGRES_HOST=""
POSTGRES_PORT=""
POSTGRES_DB=""
POSTGRES_USER=""
POSTGRES_PASSWORD=""

_________________________________________________________
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': getenv("POSTGRES_DB"),
        "USER": getenv("POSTGRES_USER"),
        "PASSWORD": getenv("POSTGRES_PASSWORD"),
        "HOST": getenv("POSTGRES_HOST"),
        "PORT":  getenv("POSTGRES_PORT"),
    }
}
_________________________________________________________________
Docker 

Portainer

Portainer.io
•

portainer/portainer-docker-extension:2.19.4
Docker container management made simple, with the world’s most popular GUI-based container management platform.
________________________
https://docs.docker.com/build/building/multi-stage/

docker network create estate_prod_nw

____________________________________________________
run docker local 
docker compose -f local.yml up --build -d --remove-orphans

_______________________________________________________
docker compose -f local.yml up --build -d --remove-orphans