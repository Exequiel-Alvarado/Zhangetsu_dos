from django.shortcuts import render



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

    })