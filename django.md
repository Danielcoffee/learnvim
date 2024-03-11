# Useful command in django

django-admin startproject <name>
django-admin: show lot of command
python3 manage.py runserver

--
work with model:
python3 manage.py makemigrations <appname>: for easy debug
python3 manage.py migrate
python3 manage.py shell: work with shell python
python3 manage.py createsuperuser
-- give name & passwords & email


## Install venv
- sudo apt install python3-venv
- active: python3 -m venv .venv
- then: source .venv/bin/activate
- install django: python3 -m pip install django~=4.0.0
- create project .
- create app
- migrate

## Model
- add all __str__ methods for all models for more descriptive


## Use heroku: make online

- Login with email: nhatrangland
- checklist:
    • install Gunicorn
    • create a requirements.txt file
    • update ALLOWED_HOSTS in helloworld/settings.py
    • create a Procfile
    • create a runtime.txt file
- then make app live on heroku:

    • create a new app on Heroku
    • disable the collection of static files (we’ll cover this in a later chapter)
    • push the code up to Heroku
    • start the Heroku server so the app is live
    • visit the app on Heroku’s provided URL

## USER
- Update url: path('accounts/", include('django.contrib.auth.urls'))
- Create: /templates/registration/login.html page
- add LOGIN_REDIRECT_URL in setting
- then update to homepage and use contribute 'is.authenticated'
- add LOGOUT_REDIRECT_URL in setting for logout

### Signup
1. Create app accounts
- python3 manage.py startapp accounts
- update app in setting: 'accounts.apps.AccountsConfig"

2. update url
- path('accounts/', include('accounts.urls'))
- accounts/urls: use SignUpView with path('signup/', SignUpView.as_view(), name='signup')

3. update views
- from django.contrib.auth.forms import UserCreationForm
- from django.urls import reverse_lazy
- django.views.generic import CreateView
- class SignUpView(CreateView):
form_class = UserCreationForm
success_url = reverse_lazy('login')
template_name = 'registration/signup.html'

4. create signup.html
- in folder templates/registration/signup.html
- update signup.html use form.as_p & csrf_token
- update link signup to base.htm

### Static file
1. Use collectstatic command
- Update in settings:
STATIC_ROOT = BASE_DIR / "staticfiles"
STATICFILES_STORAGE = "django.contrib.staticfiles.storage.StaticFilesStorage"
- run command: python3 manage.py collectstatic
- install white-noise package: python -m pip install whitenoise==5.3.0
- update whitenoise to setting
- run command collectstatic again

2. Set static root in folder 'staticfiles'

3. Set static file storage

## Custom user model
1. Update setting
2. Create CustomUser model
3. Create new form for UserCreationFrom and UserChangeForm
5. Update account admin

## User authentication
1. Template
2. URLs
3. Admin

## Bootstrap
- Use [Django.crispy.form](https://github.com/django-crispy-forms/django-crispy-forms)
- Install: python -m pip install django-crispy-forms==1.13.0
- python -m pip install crispy-bootstrap5==0.6
- update setting file 

## Password reset
- for testing use console backend
- add line for setting: EMAIL_BACKEND = ....

## Email
- Use SendGrid provider
## Newspaper App
## Permission & Authentiation


## Admin site
1. Setting
    -python manage.py changepassword admin
2. Soring
    - Use class: Meta
    - ordering = ['something']
3. Customizing the list page

        - @admin.register(Flight)
        class FlightAdmin(admin.ModelAdmin):
            list_display = ['id', 'origin', 'destination', 'duration']
            list_editable = ['duration']
            list_per_page = 10
    [references](https://docs.djangoproject.com/en/5.0/ref/contrib/admin/#modeladmin-options)


## Model
## ORM

queryset = Product.objects.get(pk=1)
queryset = Product.objects.all()
if object not exist:

from django.core.exceptions import ObjectDoesNotExist

### filter Object
<!-- Must pass keyword argument -->
queryset = Product.objects.filter(unit_price=20)
- if want boolean expression inside:
queryset = Product.objects.filter(unit_price__gt>20)
<!-- unit_price__gt: greater than
unit_price__lt: less than -->
<!-- we can search query lookup for more details -->

[Field lookups](https://docs.djangoproject.com/en/5.0/ref/models/querysets/#field-lookups)

- if want to range:
queryset = Product.objects.filter(unit_price__range=(20, 30))
- we can convert to list: result = list(queryset)
- lookup all collection with id in range
Product.objects.filter(collection__id__range=(1,10))

- lookup 'coffee' in 'title':
Product.objects.filter(title__icontains='coffee')
- Check if description is null:
`Product.objects.filter(description__isnull=True)`

### Multiple Filter

<!-- All product: inventory < 10 AND unit_price < 20 -->
- `queryset = Product.objects.filter(inventory__lt=10, unit_price__lt=20)`
- `queryset = Product.objects.filter(inventory__lt=10).filter(unit_price__lt=20)`

#### Use `Or` operator

<!-- All product: inventory < 10 OR unit_price < 20 -->
 - Need import Query: `from django.db.models import Q`

#### Use `Not Equal`
<!-- All product: inventory < 10 AND unit_price NOT EQUAL < 20 -->
 - Need import Query: `from django.db.models import Q`
 - `queryset = Product.objects.filter(Q(inventory__lt=10) & ~Q(unit_price__lt=20))`

### Sort Data

- `queryset = Product.objects.order_by('title')`: ASC
- `queryset = Product.objects.order_by('unit_price', -title')`: DSC
- `queryset= Product.objects.order_by('unit_price', '-title').reverse()`
- [Query set API](https://docs.djangoproject.com/en/5.0/ref/models/querysets/)
- For single data:
    + `product = Product.objects.order_by('unit_price')[0]`
    + `product = Product.objects.earliest('unit_price')`: first product.
    + `product = Product.objects.latest('unit_price')`: latest product.

### Limiting data

- `Product.objects.order_by('unit_price')[:5]`
- `Product.objects.order_by('unit_price')[5:10]`

### Selecting values

- queryset = Product.objects.values('id', 'title')

#### relatied field

- queryset = Product.objects.values('id', 'title', 'collecttion__title') --> dictionary
- queryset = Product.objects.values_list('id', 'title', 'collecttion__title') --> tuple

#### Select related method

Product.objects.select_related('collection').all()

#### Creating objects

    collection = Collection()
    collection.title = "abc"
    collection.featured_product =Product(pk=1)
    collection.save()

#### Updating objects

    Collection.objects.filter(pk=11).update(featured_product=None)


### Deleting objects

    - Solution 1:
        collection = Collection(pk=11)
        collection.delete()
    - Solution 2:
        Collection.objects.filter(id__gt=5).delete()

### Executing raw data

    - Solution 1:
        from django.db import connection
        with collection.cursor() as cursor:
            cursor.execute("SELECT * FROM ...."): SQL command

    - Solution 2:
        queryset = Collection.objects.raw("SELECT * FROM ..."): SQL command


