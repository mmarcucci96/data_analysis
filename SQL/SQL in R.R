library(readr)
heroes <- read_csv('heroes_information.csv')

#Use SQL DF
install.packages('sqldf')
library(sqldf)
install.packages('RSQLite')

#Ejercicio 1: Obtener el nombre del superheroe y casa publicadora de la tabla heroes.
sqldf('select name, publisher from heroes')

#Ejercicio 2: Obtener las casas publicadoras de la tabla heroes.
sqldf('
      SELECT 
      DISTINCT publisher 
      FROM heroes')

#Ejercicio 3: Obtener una cuenta de las distintas casas publicadoras de la tabla heroes.
sqldf('
  SELECT 
    COUNT(DISTINCT Publisher) 
  FROM heroes
')

#Ejercicio 4 y 5: Seleccionar todos los campos de la tabla heroes donde el superheroe mide mas de 2 metros.
sqldf('
    SELECT *
      FROM heroes 
    WHERE height >200 
      ')
#Ejercicio 6 y 7: seleccionar todos los campos de los superheroes que son humanos y miden mas de 2 metros. Contar todos los superheroes que pesan mas de 100 y menos de 200.

sqldf('
      SELECT *
      FROM heroes
      WHERE Race = "Human"
      AND Height > 200
      ')
sqldf('
      SELECT COUNT (*)
      FROM heroes
      WHERE Weight > 100
      AND Weight < 200
      ')

#Ejercicio 8: Cuenten los superheroes que tengan los ojos azul o rojo. R 271

library(sqldf)
sqldf("
      SELECT 
      COUNT(`name`)
      FROM heroes
      WHERE `Eye color` = 'blue' OR `Eye color` = 'red' 
        ")

