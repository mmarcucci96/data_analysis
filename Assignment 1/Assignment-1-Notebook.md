R Notebook
================

# Assignment 1

## Excercise 1

### 1\. A vector in R is the essence of R. It is the simplest type of data structure and is a sequence of data elements of the same data type.

### i.e of a numerical vector c(2,3,8,0)

### 2\. Some applications for boolean vectors in R vary from answering simple True or False questions to conditioning certain vectors in order to achieve and delimit the answer needed.

### 3\. Rank of a vector: defined as the maximum number of linearly independent column vectors in the matrix.

### 4\. Some applications of the sample function include analyzing statistical problems. Such as gathering a sample of the population for testing.

## Excercise 2

``` r
temp<-c(24, 25, 26, 27, 27, 25, 25, 25, 25, 24, 24, 24)
mean(temp)
```

    ## [1] 25.08333

### Average temperature: 25.08

``` r
temp[5]
```

    ## [1] 27

### The temperature in May is 27 degrees.

``` r
mean(temp[4:5])
```

    ## [1] 27

### The average temperature between April and May is 27 degrees.

``` r
mean(temp[temp>26])
```

    ## [1] 27

### The average temperature when the temperature is greater than 26º celsius.
