'''
Developer: David Muñoz
Reto:
        Requerimiento del Script:

        -> Un solo jugador lanza los dados
        -> Debe recorrer  de cero (0) a cien posiciones (100)
        -> El puede termina cuando:
            - Cuando el judor obtenga dos pares consecutivos
            - Cuando llegue a la meta (100+)
'''
from os import system, path
import random

puntaje_para_ganar = 100
jugador_player = 0
puntaje = 0


def nuevo_jugador():    
    global jugador_player
    system("cls")
    nom = input("Ingrese el nombre del jugador : ")
    print()

 
def nueva_partida():
    system("cls")
    print("BIENVENIDOS!")
    print()
    input("Presione ENTER para comenzar")
    jugador = nuevo_jugador()
    print()
    print("EL PUNTAJE PARA GANAR ES: " , str(puntaje_para_ganar))
    print()
    jugar = input("Presione Enter Para Tirar Dados")
    jugador == jugar
    print("Comenzó la partida:")
    turno_jugador = True
    puntos_turno = turno(turno_jugador)
    return puntos_turno


def turno(turno_jugador):
    resp = "S"
    total_tiro = 0
    continuar = True
    tirada = 1
    puntaje =0
    while (continuar):
        if (turno_jugador):
            print("Turno jugador")
            tirada = obtener_puntaje()
            if(tirada==0):
                total_tiro=0
                puntaje =total_tiro
            else:
                total_tiro += tirada
                puntaje = total_tiro
            print ("Puntaje de jugador :", puntaje)
            print() 


        if  puntaje + total_tiro >= puntaje_para_ganar:
            continuar = False
            if(turno_jugador):
                print("HA GANADO EL JUGADOR ")
                input("Presione ENTER para salir")
    
        else:
            resp = str.upper(input("Desea seguir tirando? (S/N)"))
            if(resp=="N"):
                print ()
                resp2 = str.upper(input("Desea salir del juego? (S/N)"))
                if (resp2=="N"):
                    turno_jugador = not(turno_jugador)
                else:
                    print ()
                    print ()
                    print ("LA PARTIDA FINALIZO")
                    continuar=False  
                    input("Presione ENTER para continuar")
    return puntaje      

def obtener_puntaje():
    dados = tirar_dados()
    if dados[0]==dados[1]:
        return 50
    elif dados[0]==1 or dados[1]==6:
        return 30
    else:
        return 0 

def tirar_dados():
    dados  = [random.randint(1,6),random.randint(1,6)]
    print("dado 1:",dados[0])
    print("dado 2:",dados[1])
    return dados

def mostrar_menu():
    system("cls")    
    print("1. Nueva Partida")
    print()

def pedir_opcion():
    opcion = input("Ingrese una opción: ")
    while opcion != "1" :
        mostrar_menu()
        print("Opción inválida")        
        opcion = input("Ingrese una opción: ")
    return opcion

mostrar_menu()
opcion = pedir_opcion()
while opcion != "5":
    if opcion == "1":
        nueva_partida()
        print("opcion 1")
    mostrar_menu()
    opcion = pedir_opcion()