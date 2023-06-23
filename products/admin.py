from django.contrib import admin

# Register your models here.
from .models import Product
#se otorgar privelegios a admin para hacer un crud de productos
admin.site.register(Product)