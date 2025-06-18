-- CASE STATEMENTS



SELECT age,
CASE 
	WHEN age<=30 THEN'YOUNG'
    WHEN age BETWEEN 31 AND 50 THEN 'ADULT'
    WHEN age>50 THEN 'OLD'
END AS age_tag
FROM employee_demographics
;

SELECT CONCAT(first_name, ' ', last_name ) AS full_name, 
salary,
CASE 
	WHEN salary <50000 THEN salary+ salary*0.05 
    WHEN salary >50000 THEN salary+ salary*0.07
END AS new_salary,
CASE
	WHEN dept_id=6 THEN salary+ salary*0.1
END AS BONUS
FROM employee_salary
;

SELECT*
FROM parks_departments
;