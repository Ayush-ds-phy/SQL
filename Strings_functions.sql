-- String functions 
SELECT LENGTH('HI') AS characters
;

SELECT first_name,LENGTH(first_name) AS 'CHARACTERS'
FROM employee_demographics
ORDER BY LENGTH(first_name)
;

SELECT UPPER('sky')
UNION ALL
SELECT LOWER('SKY')
;

SELECT  first_name, UPPER(first_name)
FROM  employee_demographics
;

SELECT TRIM('   AYUSH    ') AS trim
;

SELECT LTRIM('   AYUSH    ') AS trim
;

SELECT RTRIM('   AYUSH    ') AS trim
;

SELECT first_name, LEFT(first_name, 3) #displays 3 characters from  the left of the fist name 
FROM employee_demographics
;

SELECT
first_name,
LEFT (first_name,4),
RIGHT(first_name,3),
SUBSTRING(first_name,4,2),
SUBSTRING(birth_date,6,2) AS Birth_month
FROM employee_demographics
;

SELECT
first_name ,REPLACE(first_name,'A','D'), LOCATE('A',first_name) AS Position
FROM employee_demographics
;

#CONCAT Statement
SELECT
first_name,last_name, CONCAT(first_name,' ',last_name) AS full_name
FROM employee_demographics
;



