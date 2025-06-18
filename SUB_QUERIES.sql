-- Subqueries  
SELECT*
FROM employee_demographics
WHERE employee_id IN 
			(SELECT employee_id, dept_id#No two columns
			   FROM employee_salary
			   WHERE dept_id =1) 
;
SELECT*
FROM employee_demographics
WHERE employee_id IN 
			(SELECT employee_id#No two columns
			   FROM employee_salary
			   WHERE dept_id =1) 
;
SELECT first_name, salary ,
(SELECT AVG(salary)
 FROM employee_salary)
FROM employee_salary
;
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender 
;

SELECT AVG(`MAX(age)`) #BACK TICK
FROM 
(SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender) AS agg
;