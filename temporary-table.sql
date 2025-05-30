-- TEMPORARY TABLES
-- Temporary tables are tables that are only vususble to the session that they are created in.

CREATE TEMPORARY TABLE temp_table
(first_name Varchar(50),
last_name Varchar(50),
Favorite_movie Varchar(100)
);

SELECT *
FROM temp_table;

INSERT INTO temp_table
VALUES('ALEX', 'FREBERG', 'LORD OF THE RINGS');

SELECT *
FROM temp_table;

-- CREATING A TEMPORARY TABLES FROM AN EXISTING TABLES

CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT * 
FROM salary_over_50k;













