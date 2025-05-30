-- WINDOW FUNCTION --

SELECT gender, AVG(salary) AS avg_salary
FROM employee_demographics dem
JOIN employee_salary sal 
		ON dem.employee_id = sal.employee_id
GROUP BY gender;


-- BUT FOR WINDOW FUNCTION --
SELECT gender, AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal 
		ON dem.employee_id = sal.employee_id;
        
-- BUT FOR ADDING OTHER INFORMATION WITH THE UNIQUE VALUES --

SELECT dem.first_name, dem.last_name, gender, AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal 
		ON dem.employee_id = sal.employee_id;
        
        
-- ANOTHER WINDOW FUNCTION USING SUM --

SELECT dem.first_name, dem.last_name, gender,
SUM(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal 
		ON dem.employee_id = sal.employee_id;
        
        
-- ROLLING TOTAL--

SELECT dem.first_name, dem.last_name, gender, salary,
SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) AS Rolling_total
FROM employee_demographics dem
JOIN employee_salary sal 
		ON dem.employee_id = sal.employee_id;

-- AONTHER FUNCTION IN WINDOW FUNCTION / ROW_NUMBER--


SELECT dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal 
		ON dem.employee_id = sal.employee_id;

-- RANKING OF THEIR SALARY ---


SELECT dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC)
FROM employee_demographics dem
JOIN employee_salary sal 
		ON dem.employee_id = sal.employee_id;
        
-- RANK--
SELECT dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) rank_num
FROM employee_demographics dem
JOIN employee_salary sal 
		ON dem.employee_id = sal.employee_id;
        

-- DENSE RANK--
SELECT dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) rank_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) dense_rank_num
FROM employee_demographics dem
JOIN employee_salary sal 
		ON dem.employee_id = sal.employee_id;
        
        




