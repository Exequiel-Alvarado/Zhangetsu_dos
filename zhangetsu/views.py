from django.shortcuts import render

from django.contrib import messages
from django.contrib.auth import authenticate
from django.contrib.auth import login
from django.shortcuts import redirect
from django.contrib.auth import logout
from .forms import registerForm


def index(request):


    return render(request,'index.html', {
        #context
        'message': 'Listado de productos',
        'title': 'Productos',
        'products':[
            {'title':'Escala 1/144','price':28000, 'stock': True},#productos
            {'title':'Escala 1/100','price':39000, 'stock': True},
            {'title':'Escala 1/64','price':76000, 'stock': False},
            {'title':'Escala 1/20','price':150000, 'stock': True},
        ]
         
    })

def login_view(request):
        
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
        return render(request , 'users/login.html', {

    })


def logout_view(request):
     logout(request)
     messages.success(request, 'Sesion cerada exitosamente')
     return redirect ('login')



def register(request):
    form = registerForm(request.POST or None)

    if request.method == 'POST' and form.is_valid():
        username = form.cleaned_data.get('username') #DIc
        email = form.cleaned_data.get('email')
        password = form.cleaned_data.get('password')


        print (username)
        print (email)
        print (password)
        

    return render(request, 'users/register.html', {
          'form':form
          
    })
