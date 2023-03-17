# una función con 2 argumentos
# Ejemplo: Para calcular el área y perímetro de un rectángulo

mi_rectangulo <- function(longitud, ancho){
  area <- longitud * ancho
  perimetro <- 2 * (longitud + ancho)
  
  mi_resultado <- c("area_calculada"= area, "perimetro_calculado"= perimetro)
  return(mi_resultado)
}

mi_resultado <-mi_rectangulo(2,3)
print(mi_resultado)

print("área de mi rectángulo")
print(mi_resultado["area_calculada"])
print("perímetro de mi rectángulo")
print(mi_resultado["perimetro_calculado"])