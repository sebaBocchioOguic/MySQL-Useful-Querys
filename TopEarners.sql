/*
We define an employee's total earnings to be their monthly  worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as  space-separated integers.
*/

/* Solution 1 - Not Optimal but easier to read and analize */

/* Set Variable with maximum value */
SET @maximum = (SELECT max(months * salary) FROM Employee);

/* Select the registers that matches with the searched maximum value */
SELECT @maximum, count(*) FROM Employee
WHERE (months * salary) = @maximum


/* Solution 2 - Optimal in one line */
SELECT MAX(MONTHS * SALARY), COUNT(*) FROM EMPLOYEE WHERE (MONTHS * SALARY) = (SELECT MAX(MONTHS * SALARY) FROM EMPLOYEE);

