-- STRING FUNCTION ---

-- lenght---

SELECT LENGTH('skyfall');

SELECT first_name, LENGTH(first_name)
FROM employee_demographics;

-- upper/ lower---

SELECT UPPER('sky');
SELECT LOWER('SKY');

SELECT first_name, UPPER(first_name)
FROM employee_demographics;

-- TRIM-- 
-- left trim / right trim --

SELECT TRIM('				SKY				');

SELECT RTRIM('				SKY			');
SELECT LTRIM('				sky			');


SELECT first_name, 
LEFT(first_anme, 4),
RIGHT(first_name, 4),
-- substring ---
SUBSTRING(first_name,3,2),
birth_date,
SUBSTRING(birth_date,6,2)
FROM employee_demographics;

-- REPLACE --
SELECT first_name, REPLACE(first_name, 'a','z')
-- This means replace a to z -----
FROM employee_demographics;

-- LOCATE --
SELECT LOCATE('x','Alexander');

SELECT first_name, LOCATE('An',first_name)
FROM employee_demographics;

-- CONCAT--
SELECT first_name, last_name,
CONCAT(first_name,' ',last_name) AS Full_name
FROM employee_demographics;



