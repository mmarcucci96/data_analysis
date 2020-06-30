library(sqldf)
wine <-read.csv('WINEMAG.csv')

#Select the title, country, and province of the wines that are from Georgia or from New Zealand.
sqldf('
      SELECT 
      DISTINCT `title`,`country`, `province`
      FROM wine
      WHERE `country` = "Georgia" OR `country` = "New Zealand"
      ')

#How many different wines come from Italy? Respuesta mas elaborada 
sqldf('
      SELECT 
      COUNT (*),
      COUNT (DISTINCT `title`)
      FROM wine
      WHERE `country` = "Italy"
      ')

#What is the average price for all wines coming from the provinces of: Northeastern Italy, Thermenregion, and Kremstal?
sqldf('
      SELECT avg(price)
      FROM wine
      WHERE province = "Northeastern Italy" OR province = "Thermenregion" OR province = "Kremstal"
      ')

to_run_query <- paste('
  SELECT avg(price)
      FROM wine
      WHERE province = "Northeastern Italy" OR province = "Thermenregion" OR province = "Kremstal"
')

sqldf(to_run_query)

#Select the title, country, province, points, and price of the wines that are either from Spain or Chile and have over 90 points, or are from Austria or Hungary and have between 80 to 90 points.
sqldf('
      SELECT
      DISTINCT title, country, province, points, price
      FROM wine
      WHERE (country = "Spain" OR country = "Chile" 
      AND points > 90) OR (country = "Austria" OR country = "Hungary" 
      AND points > 80 OR points < 90)
      ')

#TIP: Si no corre mis queries R por necio, usar lo siguiente.
query <- paste("
  SELECT 
  DISTINCT title, country, province, points, price 
  FROM wine 
  WHERE country = 'Spain' OR country = 'Chile' 
  AND points > 90
")

sqldf(query)

to_run_query <- paste("
  SELECT
      DISTINCT title, country, province, points, price
      FROM wine
      WHERE country = 'Spain' OR country = 'Chile' 
      AND points > 90
")

sqldf(to_run_query)

#How many different countries does the WINEMAG data have?
sqldf('
      SELECT 
      COUNT (DISTINCT `country`)
      FROM wine
      ')



