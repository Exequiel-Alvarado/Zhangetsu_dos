from django.urls import path
from . import views


urlpatterns = [
    path ('<slug:slug>', views.ProductDetailsView.as_view(), name='product') # id-> llave primaria
]
