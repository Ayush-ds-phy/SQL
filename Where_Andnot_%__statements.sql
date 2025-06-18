-- WHERE Clause 

SELECT *
FROM employee_salary
WHERE salary>=50000;


SELECT *
FROM employee_salary
WHERE salary<=50000;

SELECT *
FROM employee_demographics
WHERE gender ='Female';

SELECT *
FROM employee_demographics
WHERE gender !='Female';

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01';

-- AND OR NOT -- LOGICAL OPERATORS

SELECT *
FROM employee_demographics
WHERE gender ='Female'
AND birth_date > '1985-01-01'
;

SELECT *
FROM employee_demographics
WHERE gender ='Female'
OR birth_date > '1985-01-01'
;

SELECT *
FROM employee_demographics
WHERE gender ='Female'
OR NOT birth_date > '1985-01-01'
;

SELECT *
FROM employee_demographics
WHERE (first_name= 'Ben' AND age=38 ) OR age>38
;

-- LIKE STATEMENT 
-- % AND _
# %= ANYTHING 
# _
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'Jer%' #anything can be after Jer
;

#keep in mind the spaces used within the quotations, it can cause an error  

SELECT *  #anything can be before a or after
FROM employee_demographics
WHERE first_name LIKE  '%A%'
;

SELECT * #specific number of characters before or after the character
FROM employee_demographics
WHERE first_name LIKE  'A____'
; 

-- can be used to get dob above or lesser than any date  

SELECT * #Employee born in 1980
FROM employee_demographics
WHERE birth_date LIKE  '1980%'
; 
