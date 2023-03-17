x <- 1:10
print(x)

if( any(x > 5) ){
  #print(paste(x, " es mayor que 1000"))
  mi_mensaje <- " Al menos uno de los números es mayor que 5"
  print(mi_mensaje)
  
  x <- x * 2
  print(x)
}