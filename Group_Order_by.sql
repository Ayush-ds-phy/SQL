-- GROUP BY

SELECT DISTINCT  gender
FROM employee_demographics
;

#Same thing with GROUP BY

SELECT gender
FROM employee_demographics
GROUP BY gender
;

#grouping and finding the aggregate data associated with the group

SELECT gender, AVG(age) #AVG= average(aggregate function here)
FROM employee_demographics
GROUP BY gender
;

SELECT occupation, salary #only if both values are the same will it be grouped together 
FROM employee_salary
GROUP BY occupation,salary 
;

SELECT occupation, Avg(salary) , MAX(salary), MIN(salary), COUNT(salary)#only if both values are the same will it be grouped together 
FROM employee_salary
GROUP BY occupation
;
-- Order by 

SELECT * 
FROM employee_demographics
ORDER BY  gender DESC, age DESC
;
 
SELECT * 
FROM employee_demographics
ORDER BY age DESC, gender ASC # ORDER OF THE STATEMENTS MATTER
;
 
SELECT * 
FROM employee_demographics
ORDER BY 5,4 #order by column number
;
 
