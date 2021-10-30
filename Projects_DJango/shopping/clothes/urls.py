from django.urls import path
from . import views

urlpatterns = [
    #Enrutar todas las vistas de la App [endpoints]
    path('', views.index, name='index'),
    path('marcas', views.listar_marcas, name="listar_marcas"),
    path('sucursales', views.listar_sucursales, name="listar_sucursales"),
    path('landig', views.landing_page, name="landing_page")
]