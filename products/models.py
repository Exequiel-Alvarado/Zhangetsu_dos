import uuid
#import base64
from django.shortcuts import render


from django.db import models
from django.utils.text import slugify
from django.db.models.signals import pre_save

# Create your models here.
class Product(models.Model):
    title = models.CharField(max_length=50)
    description = models.TextField()
    price = models.DecimalField(max_digits=8, decimal_places=0, default= 0) #12345678.12
    slug = models.SlugField(null=False, blank=False, unique=True)
    #base 64
    #image = models.TextField(null=False, blank=False)
    image = models.ImageField(upload_to='products/', null=False, blank=False)
    created_at = models.DateTimeField(auto_now_add=True)

    #def save(self, *args, **kwargs):
        #self.slug = slugify(self.title)
        #super(Product, self).save(*args, **kwargs)
    def __str__(self):
        return self.title

def set_slug(sender, instance, *args, **kwargs): #callback
    if instance.title and not instance.slug:
        slug = slugify(instance.title)

        while Product.objects.filter(slug=slug).exists():
            slug = slugify(
                '{}-{}'.format(instance.title, str(uuid.uuid4())[:8] )
            )

        instance.slug = slug

#metodo para base 64
#def save_image(self, base64_data):
    # Decodifica la imagen en formato Base64
 #   decoded_image = base64.b64decode(base64_data)

    # Guarda la imagen en el sistema de archivos
  #  with open(self.get_image_path(), 'wb') as f:
   #     f.write(decoded_image)

#def get_image_path(self):
 #   return f"products/{self.slug}.jpg"  # O cualquier otra extensión de imagen que desees
#--------------------------------

        


pre_save.connect(set_slug, sender=Product)
 
