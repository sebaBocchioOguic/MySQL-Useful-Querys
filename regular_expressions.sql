
/* Some small querys with regular expressions in MySql */


/* Obtain results of City column where City doesn't start with vowels */

SELECT DISTINCT CITY FROM STATION WHERE CITY NOT REGEXP '^[aeiou]'


/* Obtain results of City column where City starts AND ends with vowels */

SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '^[aeiou]' AND CITY REGEXP '[aeiou]$'
