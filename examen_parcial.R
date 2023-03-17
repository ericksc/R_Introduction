# Solucion propuesta
Ventas_Lapices <- c(140,98,121, 201, 213);
Ventas_Cuadernos <- c(118,73, 88, 101, 99);

Vector_dias <- c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes");

class(Ventas_Lapices);
class(Ventas_Cuadernos);

class(Vector_dias)
  
names(Ventas_Lapices) <- Vector_dias;

# pregunta 1
# Asigne los nombres al vector cuadernos
names(Ventas_Cuadernos) <- Vector_dias;
Ventas_Cuadernos


# pregunta 2
# Sume el total por vector e imprima el valor. Use la funcion sum()
sum(Ventas_Cuadernos)
sum(Ventas_Lapices)

# pregunta 3
# Sume ambos vectores en una variable total_semana , imprima dicha variable
total_semana <- Ventas_Cuadernos + Ventas_Lapices
total_semana

# pregunta 4
# Calcule las ganancias del dia miercoles
total_semana["Miercoles"]

# Pregunta 5
# Calcule las ventas de lunes a miercoles
ventas_lunes_a_miercoles <- total_semana[c("Lunes", "Martes", "Miercoles")]
sum(ventas_lunes_a_miercoles)

# Pregunta 6
# Calcule la ganancia promedio a mitad de semana
# calculando las ganancias por dia y luego calculando el promedio
ventas_lunes_a_miercoles <- total_semana[c("Lunes", "Martes", "Miercoles")]
mean(ventas_lunes_a_miercoles)

# Pregunta 7
# Indique los dias que la venta de cuadernos fue menor a 100
Ventas_Cuadernos
Ventas_menores_que_100 <- Ventas_Cuadernos[Ventas_Cuadernos < 100]
names(Ventas_menores_que_100)


