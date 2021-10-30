from django.contrib import admin
from .models import Sucursal, Marca, Cliente
# Register your models here.

admin.site.register(Sucursal)
admin.site.register(Marca)
admin.site.register(Cliente)