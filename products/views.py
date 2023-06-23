
from django.shortcuts import render

from django.db.models import Q

from django.views.generic.list import ListView
from django.views.generic.detail import DetailView

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

class ProductDetailsView(DetailView): # id -> llave primaria

    model = Product
    template_name ='Products/product.html'    

   
class ProductSearchListView(ListView):
    template_name = 'products/search.html'
    #para hace las busquedas con las consultas por nombre
    def get_queryset(self):
         filter = Q(title__icontains=self.query())  | Q(category__title__icontains=self.query())
         #select * from products where title like %valor%
         return Product.objects.filter(filter)

    def query(selft):
        return selft.request.GET.get('q')  
    
    def get_context_data(self,**Kwargs):
        context = super().get_context_data(**Kwargs)
        context['query'] = self.query()
        context['count'] = context['product_list'].count()

        return context