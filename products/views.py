from typing import Any
from django.shortcuts import render

from django.views.generic.list import ListView

from .models import Product

# Create your views here.
class ProductListView(ListView):
    template_name = 'index.html'
    queryset = Product.objects.all().order_by('-id')


    def get_context_data(self,**Kwargs):
        context = super().get_context_data(**Kwargs)
        context['message'] = 'Listado de Productos'
        context['products'] = context['product_list']
        print(context)

        return context

class ProductDetailsView():
    pass     