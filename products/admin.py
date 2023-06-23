from django.contrib import admin

# Register your models here.
from .models import Product

class ProductAdmin(admin.ModelAdmin):
    fields = ('title', 'description', 'price')
    list_display = ('__str__', 'slug', 'created_at')

#se otorgar privelegios a admin para hacer un crud de productos
admin.site.register(Product, ProductAdmin)   