# Una función simple para verificar si un número es par o impar

mi_detector_par <- function(mi_numero) {
  if(mi_numero %% 2 == 0)
    return("Número par")
  else
    return("Número impar")
}

print("Probando con el número 5")
print(mi_detector_par(5))

print("Probando con el número 6")
print(mi_detector_par(6))