from django.db import models
from django.db.models.base import Model

# Create your models here.

class Marca(models.Model) :
    nombre = models.CharField(max_length=100)
    pais = models.CharField(max_length=100)
    tipo = models.IntegerField(default=1)

class Sucursal(models.Model) :
    ciudad= models.CharField(max_length=100)
