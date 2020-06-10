### Assignment 1

## Excercise 1

# 1. A vector in R is the essence of R. It is the simplest type of data structure and is a sequence of data elements of the same data type.
# i.e of a numerical vector c(2,3,8,0)

# 2. Some applications for boolean vectors in R vary from answering simple True or False questions to conditioning certain vectors in order to achieve and delimit the answer needed.

# 3. Rank of a vector: defined as the maximum number of linearly independent column vectors in the matrix.

# 4. Some applications of the sample function include analyzing statistical problems. Such as gathering a sample of the population for testing.

## Excercise 2

temp<-c(24, 25, 26, 27, 27, 25, 25, 25, 25, 24, 24, 24)
mean(temp)
# Average temperature: 25.08

temp[5]
# The temperature in May is 27 degrees.

mean(temp[4:5])
# The average temperature between April and May is 27 degrees.

mean(temp[temp>26])
# The average temperature when the temperature is greater than 26º celsius.

mean(25:26)
#Average temperature when the temperature is between 25º and 26º

min(temp[1:3], temp[8:10], temp[12])
#The minimum temperature between January, February, March, August,September,October and December

##Excercise 3

coin <-c('1','2')  
bias <-c(1/3, 2/3)
sample(coin, 15, replace = TRUE, prob = bias)

