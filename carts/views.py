from django.shortcuts import redirect,render
from django.shortcuts import get_object_or_404

from products.models import Product
from .models import Cart
from .utils import get_or_create_cart



# Create your views here.
def cart(request):
    #create una seccion
    #request.session['cart_id'] = '123' #diccionario

    #obtendremos el valor de la session
    #valor = request.session.get('cart_id')
    #print(valor)

    #eliminar el valor de una session
    #request.session['cart_id'] = None
   
    cart = get_or_create_cart(request)

    return render (request, 'carts/cart.html',{
        'cart':cart

    })

def add(request):
    cart = get_or_create_cart(request)
    product = Product.objects.get(pk=request.POST.get('product_id'))

    cart.products.add(product )

    return render (request, 'carts/add.html',{
        'product': product
    })
def remove(request):
    
    cart = get_or_create_cart(request)
    product = get_object_or_404(Product, pk=request.POST.get('product_id'))

    cart.products.remove(product)

    return redirect ('carts:cart')
