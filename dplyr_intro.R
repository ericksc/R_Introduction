#install.packages("dplyr",dependencies = TRUE)
library(dplyr)

head(mtcars)

#Casos usando "select()"
#Ejemplo 1  select(df,col1,col2,col3)
select(mtcars,mpg,cyl,disp)

#Ejemplo 2  select(df,col1:col7,-col3)
select(mtcars,mpg:qsec)

select(mtcars,mpg:qsec,-cyl)

#Ejemplo 3 select() starts_with
select(mtcars, starts_with('c'))

#Ejemplo 4 select() ends_with
select(mtcars, ends_with('yl'))

#Ejemplo 5 select() contains
select(mtcars, contains('ar'))

#Casos usando filters
#Ejemplo 1 Filtrar todos los vehiculos que realizan mas de 25 mpg
filter(mtcars, mpg > 25)

#Ejemplo 2 Filtrar todos los vehiculos que son de 8 cilindros y qsec mayor a 16
filter(mtcars, cyl == 8, qsec > 16)
filter(mtcars, cyl == 8 & qsec > 16)

#slice
#la funcion slice sirve para poder extraer registros especificos de un df
slice(mtcars,1:5)

slice(mtcars,c(1:5,11:15))



#arrange
#Extraer el header de los registros ordenados por hp
arrange(mtcars,hp)
head(arrange(mtcars,hp))

arrange(mtcars,wt)
head(arrange(mtcars,wt),10)
tail(arrange(mtcars,wt),10)

#Extraer el header de los registros ordenados por hp de manera descendente 
head(arrange(mtcars,desc(hp)),50)
tail(arrange(mtcars,desc(hp)),50)

#Ordenar los registros mediante cilindros(cyl) y millas por galon(mpg)
arrange(mtcars, cyl, mpg)

#Ordenar los registros de manera descendente en 2 columnas
head(arrange(mtcars, desc(cyl), desc(mpg)))


#mutate
#Copiar la columna con un nuevo nombre
mutate(mtcars,horsepw = hp)

#Ejecutar una multiplicacion o funcion sobre la columna
mutate(mtcars, kmpg = mpg*1.6)

#Ejecutar la suma de 2 columnas en una nueva
mutate(mtcars, suma_col = disp + mpg)

#Ejecturar una division de 2 columnas
mtcars2 <- mutate(mtcars, hp_to_wt = hp/wt)




#summarise
#Ejecutar ciertas funciones sobre el df indicado
summarise(mtcars, mean_weight = mean(wt), 
          max_milepergallon = max(mpg), 
          min_cylinder = min(cyl))


#Otra forma de indicarle las funciones y las columnas a utilzar del df
summarise_each(mtcars, funs(mean, sd), mpg, wt)


#Algunos otros comandos importates dentro de dplyr

#glimpse
glimpse(mtcars)
head(mtcars,20)

#distinct
distinct(mtcars, cyl)

distinct(mtcars, cyl,am)

table(mtcars$cyl)


#sample_n
sample_n(mtcars,10)


#do
result = do(mtcars,model = lm(mpg ~ wt, data = .))

result$model


## Encadenando sentencias u operaciones
# Este es una de las grandes virtudes de esta libreria 


#Ejemplo 1
#Cual vehiculo de los que tiene 8 cilindros tiene mas caballos de fuerza
mtcars %>%
  filter(cyl==8) %>%
  summarise(maxhp = max(hp))

#Calcule el promedio de caballos de fuerza (hp) y las mpg, entre los vehiculos de 8 cilindros (cyl)
mtcars %>%
  filter(cyl==8) %>%
  summarise(meanhp = mean(hp),meanmpg = mean(mpg))


#Calcule  el total de vehiculos por categoria de cilindros (cyl) y ordene la lista de mayor a menor
mtcars %>%
  group_by(cyl) %>%
  summarise(cyl_count=n()) %>%
  arrange(desc(cyl_count))

#Indique el total de millas por galon realizadas en los vehiculos de acuerdo 
#a la cantidad de carburadores


mtcars %>%
  group_by(carb) %>%
  summarise(totalmpg = sum(mpg))



#Calcular el promedio de las mpg para los vehiculos cuyo peso sea mayor a 3.5  
# y agruparlos por cilindos y tipo manual o automatico
mtcars %>% 
  filter(wt > 3.5) %>%
  group_by(cyl, am) %>% 
  summarise(mn = mean(mpg))