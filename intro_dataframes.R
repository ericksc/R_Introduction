# Introducción a DataFrames en R

# Para crear un dataframe usando vectores

# Paso 1
# Crear los vectores
cedula <- c(10,11,12,13)
nombre <- c('carlos','luis','juan','pedro')
nacimiento <- as.Date(c('1990-10-02','1981-3-24','1987-6-14','1985-8-16'))

# Paso 2
# Crear el DataFrame
df <- data.frame(cedula,nombre,nacimiento)

# Paso 3 (opcional)
# Imprimir el dataframe en pantalla
df


# Para crear un dataframe directamente


# Paso 1
# Crear el DataFrame
# Creando los vectores directamente en el momento de crear el dataframe
df <- data.frame(
  cedula = c(10,11,12,13),
  nombre = c('carlos','luis','juan','pedro'),
  nacimiento = as.Date(c('1990-10-02','1981-3-24','1987-6-14','1985-8-16'))
)

# Paso 2 (opcional)
# Imprimir el dataframe en pantalla
df

# Observar los tipos de datos en el dataframe
# Paso 0
# Suponga que tienes un df ya creado

# Paso 1
# Ejecutar el commando sapply para consultar los tipos de dato de las columnas
sapply(df, class)


# Observar los tipos de datos en el dataframe (Otra forma)
# Paso 0
# Suponga que tienes un df ya creado

# Paso 1
# Ejecutar la funcion str para ver los tipos de datos por columna
str(df)

# Asignando nombres de filas al dataframe
# Paso 0
# Suponiendo que se tiene un dataframe en la variable df

# Paso 1
row.names(df) <- c('fila1', 'fila2', 'fila3', 'fila4')
# Paso 2 (opcional)
# imprimir en pantalla
df

# Selección de filas y columnas
# Seleccionando filas por índice
df[3,]

# Seleccionando filas por varios indices. usando vector
df[c(3,2,1),]

# Seleccionando filas por rango en el indice
df[2:3,]

# Seleccionando filas por nombre
df['fila2',]

# Seleccionado filas por vector de nombres
df[c('fila1', 'fila2'),]

# Seleccionado un subconjunto de filas por contenido en columnas
subset(df, nombre %in% c('carlos', 'luis'))

# Seleccionado un subconjunto de filas por contenido en columnas. Utilizando dplyr
library('dplyr')
filter(df, nombre %in% c("carlos", "luis"))

# Seleccionando columnas por nombre (nombre de columna)
df[, "nombre"]

# Seleccionando columnas usando vector de nombres de columnas
df[, c('cedula', 'nombre')]

# Seleccionado columnas por posición (de columnas)
df[, c(2,3)]

# Usando dplyr
library('dplyr')

# Seleccionado columnas por vector de indices (de posicion)
df %>% select(c(1,3))

# Seleccionado columnas por rango de indices (de posicion)
df %>% select(2:3)

# Renombrando nombres de columnas por posicion
colnames(df)[2] = 'nuevo_nombre'

# Renombrando nombre de columna por nombre(de columna)
colnames(df)[colnames(df) == 'cedula'] = "identificacion"


# usando dplyr
library('dplyr')
df <- df %>% rename("identificacion" = "cedula")

# Renombrar multiples columnas por nombre
df <- df %>% rename("cedula" = "identificacion",
                    "nombre" = "nuevo_nombre")

# Renombrar multiples columnas por indices
df <- df %>% 
  rename(col1 = 1, col2 = 2)

# Actualizando columnas
# Reemplaza texto with otro texto en una columna
df$nombre[df$col2 == 'carlos'] <- 'carlitos'
df

