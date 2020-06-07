##Vectors in R

#Crear vectores numericos en R, ejemplo
Forma 1
a <- 12:25
b <-c(11, a, 13)

#Ufunc examples
mean(b)
sum(b)
class(b)
typeof(b)
length(b)

#Vectores texto y numerico, puedo pasar valores numericos a texto pero no al reves. Ej.
c(b, FALSE, 'Marisol')
c <-c('Hello', 'World')

##Simulation
#Ejercicio 1 - Tirar un dado 25 veces y ver cual fue el resultado de cada vez
d <- (1:6)
sample(d,25,replace=T,prob=NULL)
