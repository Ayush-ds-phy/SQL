-- Joins 

SELECT* 
FROM employee_demographics;
 
SELECT* 
FROM employee_salary;

SELECT* 
FROM employee_salary AS SAL
INNER JOIN employee_demographics AS DEM
	ON SAL.employee_id= DEM.employee_id 
; #See that employee id 2 is not present since it is not common to demographic and salary

SELECT SAL.employee_id,age , salary #Only showing certain values from sal and dem 
FROM employee_salary AS SAL
INNER JOIN employee_demographics AS DEM
	ON SAL.employee_id= DEM.employee_id 
;

-- OUTER JOIN 

#left join

SELECT * #SEE THAT DEM TABLE HAS BEEN ATTCHED TO RIGHT SIDE OF SAL
FROM employee_salary AS SAL #THIS TABLE WILL BE JOINED TO THE LEFT SIDE OF THE TABLE BELOW
LEFT JOIN employee_demographics AS DEM
	ON SAL.employee_id= DEM.employee_id 
;#THUS THE OUTPUT HAS ID 2 

SELECT * #SEE THAT DEM TABLE HAS BEEN ATTCHED TO RIGHT SIDE OF SAL
FROM employee_salary AS SAL #THIS TABLE WILL BE JOINED TO THE RIGHT SIDE OF THE TABLE BELOW 
RIGHT JOIN employee_demographics AS DEM
	ON SAL.employee_id= DEM.employee_id 
;#THUS THE OUTPUT DOES NOT HAVER ID 2 

-- SELF JOIN 

SELECT emp1.employee_id AS emp_santa ,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_name,
emp2.first_name AS first_name_emp,
emp2.last_name AS last_name_emp
FROM employee_salary emp1
Join employee_salary emp2
	ON emp1.employee_id + 1=emp2.employee_id
;

-- joining multiple tabels 

SELECT *
FROM employee_demographics dem
INNER JOIN employee_salary sal
    ON dem.employee_id=sal.employee_id
;

SELECT* #reference table 
FROM parks_departments
;
SELECT *
FROM employee_demographics dem
INNER JOIN employee_salary sal
    ON dem.employee_id=sal.employee_id
INNER JOIN parks_departments pd
    ON sal.dept_id=pd.department_id
    
;
 
SELECT sal.first_name, sal.last_name , age ,salary ,department_name
FROM parks_departments pd
INNER JOIN employee_salary sal
    ON pd.department_id=sal.dept_id
INNER JOIN employee_demographics dem
    ON dem.employee_id=sal.employee_id
;
    
