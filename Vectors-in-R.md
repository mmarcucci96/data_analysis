R Notebook
================

## Vectors in R

### Crear vectores numericos en R, ejemplo

Se crean los vectores con el comando `c()`. Y un vector es una
*coleccion* de **elementos**

``` r
a <- 12:25
b <-c(11, a, 13)
b
```

    ##  [1] 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 13

### Ufunc examples

``` r
mean(b)
```

    ## [1] 17.6875

``` r
sum(b)
```

    ## [1] 283

``` r
class(b)
```

    ## [1] "numeric"

``` r
typeof(b)
```

    ## [1] "double"

``` r
length(b)
```

    ## [1] 16

### Vectores texto y numerico

*puedo pasar valores numericos a texto pero no al reves. Ej.*

``` r
c(b, FALSE, 'Marisol')
```

    ##  [1] "11"      "12"      "13"      "14"      "15"      "16"      "17"     
    ##  [8] "18"      "19"      "20"      "21"      "22"      "23"      "24"     
    ## [15] "25"      "13"      "FALSE"   "Marisol"

``` r
c <-c('Hello', 'World')
```

# Simulation

## Ejercicio 1 - Tirar un dado 25 veces y ver cual fue el resultado de cada vez

``` r
d <- (1:6)
sample(d,25,replace=T,prob=NULL)
```

    ##  [1] 3 2 2 2 2 5 6 5 5 1 1 4 1 3 2 2 4 4 1 3 2 5 6 2 4
