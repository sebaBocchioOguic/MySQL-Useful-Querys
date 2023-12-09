/*
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* * * * * 
* * * * 
* * * 
* * 
*

Write a query to print the pattern P(20).
*/

/* I change temporary the delimiter character for ending the statements, just to tell the server that has to take the entire SP as a single statement */
DELIMITER $$

/* Create a Stored Procedure with only one argument containing the input for loops */
CREATE PROCEDURE Triangle(loops INT)
BEGIN 
    /* Create a loop based on the input argument */
    WHILE loops >= 1 DO
        /* Use MySql function REPEAT to repeat the char pattern */
        SELECT REPEAT('* ',loops);
        SET loops = loops - 1;
    END WHILE;
END$$

/* I go back to the original delimiter of statements */
DELIMITER ;

/* At the end, I call the SP with the nessesary value of loops in the argument */
CALL Triangle(20);
