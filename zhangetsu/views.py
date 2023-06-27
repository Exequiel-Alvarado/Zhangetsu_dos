
from django.shortcuts import render

from django.contrib import messages
from django.contrib.auth import authenticate
from django.contrib.auth import login
from django.shortcuts import redirect
from django.contrib.auth import logout
from .forms import registerForm
from products.models import Product

#from django.contrib.auth.models import User
from users.models import User


def index(request):

    products = Product.objects.all() .order_by('-id')


    return render(request,'index.html', {
        #context
        'message': 'Listado de productos',
        'title': 'Productos',
        'products': products,
         
    })

def login_view(request):
    if request.user.is_authenticated:
        return redirect('index')
        
     #para auntentificar un login de usuario
    if request.method == 'POST':
        username = request.POST.get('username') #diccionario
        password = request.POST.get('password') #none

        user = authenticate(username=username, password=password) #none
        if  user:
            login(request, user)
            # print("Usuario auntetificado")
            messages.success(request, 'Bienvenido {}'.format(user.username))
            return redirect('index')

        else:
            #print("Usuario NO auntetificado")     
            messages.error(request, 'Usuario o Contraseña no validas')
    return render(request , 'users/login.html', { })


def logout_view(request):
     
     logout(request)
     messages.success(request, 'Sesion cerada exitosamente')
     return redirect ('login')


#se agrega condiciones
def register(request):
    if request.user.is_authenticated:
         return redirect('index')

    form = registerForm(request.POST or None)

    if request.method == 'POST' and form.is_valid():
        
        #username = form.cleaned_data.get('username') #DIc
        #email = form.cleaned_data.get('email')
        #password = form.cleaned_data.get('password')


        #user = User.objects.create_user(username, email, password)
        user = form.save()
        if user:
             login(request, user )
             messages.success(request, 'Usuario creado exitosamente')
             return redirect('index')
        

    return render(request, 'users/register.html', { 'form':form })
