SELECT * 
FROM employee_salary
WHERE first_name = 'leslie'
;

SELECT *
FROM employee_salary
WHERE salary > 50000
;

SELECT *
FROM employee_salary
WHERE salary >= 50000
;

SELECT *
FROM employee_demographics
WHERE gender = 'female'
;

SELECT *
FROM employee_demographics
WHERE gender != 'female'
;

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
;

-- logical operator / (AND OR NOT)

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'male'
;

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR gender = 'male'
;

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'male'
;

SELECT *
FROM employee_demographics
WHERE (first_name = 'leslie' AND age = 44) OR age > 55
;

-- LIKE STATEMENT
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'Jer%'
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE '%er%'
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__'
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___%'
;

SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1985'
;
SELECT gender AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;

-- ORDER -- BY
SELECT *
FROM employee_demographics
ORDER BY first_name;

SELECT *
FROM employee_demographics
ORDER BY first_name DESC;

SELECT *
FROM employee_demographics
ORDER BY 5, 4
;

-- HAVING--

SELECT occupation
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000
;

-- LIMIT ---
SELECT *
FROM employee_demographics
ORDER BY (age)
LIMIT 3
;

-- Aliasing---

SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40
;



--- join ----

SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS cal
	ON dem.employee_id = sal.employee_demographics
;

-- OUTER JOIN---


SELECT *
FROM employee_demographics AS dem
RIGHT OUTER JOIN employee_salary AS cal
	ON dem.employee_id = sal.employee_demographics
;

-- SELF JOIN---- 
SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee AS emp_name,
emp2.first_name AS first_name_emp,
emp2.last_name AS last_name_emp
FROM employee_salary AS emp1
JOIN employee_salary AS emp2
	ON emp1.employee_id + 1 = emp2.employee_id
    
,

-- MULTIPLE TABLE ---
-- joining of multiple table ---

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd
	ON sal.dept_id = pd,department_id
;


























