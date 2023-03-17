ventas_lapices <- c(140,98,121,201,213)
ventas_cuadernos <- c(118,73,88,101,99)
vector_dias <- c("Lunes","Martes","Miercoles","Jueves","Viernes")

matriz_por_dia <- matrix(c(ventas_lapices,ventas_cuadernos),
                         nrow = 5,
                         ncol = 2)
byrow = TRUE

matriz_por_dia

colnames(matriz_por_dia) <- c('lapices', 'cuadernos')
rownames(matriz_por_dia) <- c('Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes')

matriz_por_dia

matriz_por_dia["Miercoles", ]

sum(matriz_por_dia["Miercoles", ])