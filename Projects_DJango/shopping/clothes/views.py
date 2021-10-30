from django.shortcuts import render

from django.http import HttpResponse

# Create your views here.
def index(request):
    return HttpResponse("Bienvenido a mi tienda de ropa")

def listar_marcas(request):
    return HttpResponse("Aquí vas a encontrar tus marcas favoritas de ropa")

def listar_sucursales(request):
    return HttpResponse("Aquí vas a encontrar tus sucursales <br><br><center> SITIO EN CONSTRUCCIÓN </br></center>")

def landing_page(request):
    return HttpResponse("<center> Esta es nuestra página de lanzamiento</center>")