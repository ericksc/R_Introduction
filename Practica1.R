#Practica Inicial de Aritmetica en R
#Utilice R como una calculadora

# Suma
5 + 5 
# Resta
5 - 5 
# Multiplicacion
3 * 5
# Division
(5 + 5) / 2 
# Potencia
2 ^ 5
# Modulo
28 %% 6


#Definicion de Variables en R
var_numerico <- 42
var_numerico


manzanas <- 7
peras <- 9
frutas <- manzanas + peras
frutas

var_caracter <- "universo"
var_caracter

var_logical <- TRUE
var_logical

class(var_numerico)
class(var_caracter)
class(var_logical)

#Practica A
# 1- Crear una variable "x" la cual sume los valores 7 y 4
# 2- Crear una variable y que tome "x" y le pueda restar 3
# 3- Crear una variable z que tome "y" pueda elevarlo a la 2


#Respuesta 1
x <- 7 + 4
x
#Respuesta 2
y <- x - 3
y
#Respuesta 3
z <- y ^ 2
z

#*********Declaracion de vectores*************

ventas_lapices <- c(140,98,121,201,213)
ventas_cuadernos <- c(118,73,88,101,99)
vector_dias <- c("Lunes","Martes","Miercoles","Jueves","Viernes")

class(ventas_lapices)
class(ventas_cuadernos)
class(ventas_cuadernos)
class(vector_dias)

names(ventas_lapices) <- vector_dias
ventas_lapices


#Practica B
# 4- Asigne los nombres al vector cuadernos
# 5- Sume el total por vector e imprima el valor use la funcion sum()
# 6-Sume ambos vectores en una variable total_semana, imprima dicha variable


#Respuesta 4
names(ventas_cuadernos) <- vector_dias

#Respuesta 5
sum(ventas_lapices)
sum(ventas_cuadernos)

#Respuesta 6
total_lapices <- sum(ventas_lapices)
total_cuadernos <- sum(ventas_cuadernos)

total_semana <- sum(ventas_lapices) + sum(ventas_cuadernos)
total_semana

total_semana <- sum(ventas_lapices,ventas_cuadernos)

total_semana
print(total_semana)




#Calcule las ganancias del dia miercoles
ventas_cuadernos[3]
ventas_cuadernos["Miercoles"]

#Calcule las ventas de lunes a miercoles
mitad_semana <- ventas_cuadernos[c("Lunes","Martes","Miercoles")]
final_semana <- ventas_cuadernos[4:5]

mitad_semana
final_semana

#Calcule la ganancia promedio a mitad de semana
mean(mitad_semana)

#Indique los dias que la venta de cuadernos fue menor a 100

ventas_bajas_logico <- ventas_cuadernos < 100
ventas_bajas_logico

ventas_bajas <- ventas_cuadernos[ventas_bajas_logico]
ventas_bajas


