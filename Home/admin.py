from django.contrib import admin

# Register your models here.
from .models import Person
from .models import Sport
from .models import Health

admin.site.register(Person)
admin.site.register(Sport)
admin.site.register(Health)
