from django.db import models
from django.db.models.base import Model

# Create your models here.

class Marca(models.Model) :
    nombre = models.CharField(max_length=100)
    pais = models.CharField(max_length=100)
    tipo_marca = models.CharField(max_length=100)
    estado = models.IntegerField(default=1)

    #def __str__(self):
     #   return self.nombre,self.pais, self.tipo_marca, self.estado

class Sucursal(models.Model) :
    ciudad = models.CharField(max_length=100)
    direccion = models.CharField(max_length=100, default= "")

    #def __str__(self):
     #   return self.ciudad

class Cliente(models.Model) :
    nombre = models.CharField(max_length=100)

    #def __str__(self):
     #   return self.nombre