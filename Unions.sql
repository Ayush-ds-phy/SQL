-- Unions #combining rows

SELECT age, gender
FROM employee_demographics
UNION
SELECT first_name,last_name 
FROM employee_salary
;

SELECT first_name,last_name #by default union = union distinct(only takes unique values)
FROM employee_demographics
UNION 
SELECT first_name,last_name 
FROM employee_salary
;

SELECT first_name,last_name #takes all values
FROM employee_demographics
UNION ALL
SELECT first_name,last_name 
FROM employee_salary
;

SELECT first_name, last_name , 'OLD' AS LABEL
FROM employee_demographics
WHERE age>50
-- Unions #combining rows

SELECT age, gender
FROM employee_demographics
UNION
SELECT first_name,last_name 
FROM employee_salary
;

SELECT first_name,last_name #by default union = union distinct(only takes unique values)
FROM employee_demographics
UNION 
SELECT first_name,last_name 
FROM employee_salary
;

SELECT first_name,last_name #takes all values
FROM employee_demographics
UNION ALL
SELECT first_name,last_name 
FROM employee_salary
;

SELECT first_name, last_name , 'OLD male' AS LABEL
FROM employee_demographics
WHERE age>40 AND gender= 'male'
UNION
SELECT first_name, last_name , 'OLD female' AS LABEL
FROM employee_demographics
WHERE age>40 AND gender= 'female'
UNION
SELECT first_name, last_name , 'Over paid employee' AS LABEL
FROM employee_salary
WHERE salary> 70000
ORDER BY first_name
;

