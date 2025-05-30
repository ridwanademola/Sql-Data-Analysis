-- CASE STATEMENT --
-- THIS ALLOWS YOU TO ADD LOGIC IN YOUR SELECT STATEMENT SORT LIKE IF ELSE STATEMENT---

SELECT first_name, 
last_name,
CASE 
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 and 50 THEN 'OLD'
    WHEN age >= 50 THEN "ON DEATH'S DOOR"
END AS Age_Brackets
FROM employee_demographics;


-- ANOTHER TABLE--

SELECT first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary + (salary * 0.05)
    WHEN salary > 50000 THEN salary + (salary * 0.07)
    
END AS New_salary,
CASE
	WHEN dept_id = 6 THEN salary * .10
END AS Bonus

FROM employee_salary;