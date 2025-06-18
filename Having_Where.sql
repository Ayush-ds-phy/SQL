-- Having Vs Where
SELECT occupation, AVG(salary)
FROM employee_salary
GROUP BY occupation
HAVING AVG(salary)>20000 #WORKS
;

SELECT occupation, AVG(salary)
FROM employee_salary
HAVING AVG(salary)>20000 
GROUP BY occupation #Doesn't work
;

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%MANAGER%'
GROUP BY occupation
HAVING AVG(salary)>20000 
;

