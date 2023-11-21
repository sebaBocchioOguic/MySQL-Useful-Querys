/*
This Query searches into STATION Table and brings the LONGEST and SHORTEST CITY name from the base. The result brings the name of both LONGEST and SHORTEST CITY and the number of characters. If there are more than one ocurrencies, returns only the first alfabetically.
*/

/* Stores in @max the MAX LENGTH of CITY field */
SET @max = (SELECT MAX(LENGTH(CITY)) FROM STATION);

/* Stores in @min the MIN LENGTH of CITY field */
SET @min = (SELECT MIN(LENGTH(CITY)) FROM STATION);


/* Select from STATION table the CITY that matches the MAX LENGTH. If >1 occurencies, returns only the first alfabetically */
SELECT CITY, @max FROM STATION 
WHERE LENGTH(CITY) = @max
ORDER BY CITY ASC
LIMIT 1 ;

/* Select from STATION table the CITY that matches the MIN LENGTH. If >1 occurencies, returns only the first alfabetically */
SELECT CITY, @min FROM STATION 
WHERE LENGTH(CITY) = @min
ORDER BY CITY ASC
LIMIT 1 ;

