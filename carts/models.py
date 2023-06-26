from django.db import models

from users.models import User
from products.models import Product
# Create your models here.

class Cart(models.Model):
    user =  models.ForeignKey(User, null=True, blank=True, on_delete=models.CASCADE)#uno a muchos
    products = models.ManyToManyField(Product) #muchos a muchos
    subtotal = models.DecimalField(default=0, max_digits=8, decimal_places=0)
    total = models.DecimalField(default=0, max_digits=8, decimal_places=0)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return ''
    

