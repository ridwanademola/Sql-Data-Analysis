-- STORED PROCEDURES--
-- ARE THE WAY TO SAVE YOUR SQL CODE THAT YOU CAN REUSE OVER AND OVER AGAIN 

CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE salary >= 50000;

CALL large_salaries();

-- MULTIPLE QUERY UNDER ONE PROCEDURE
DELIMITER $$
CREATE PROCEDURE large_salaries2()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
    SELECT *
    FROM employee_salary
    WHERE salary >= 100000;
END $$
DELIMITER ;




-- PARAMETER--
DELIMITER $$
CREATE PROCEDURE large_salaries3(huggymufin INT)
BEGIN
	SELECT salary
	FROM employee_salary
	WHERE employee_salary = huggymufin;
END $$
DELIMITER $$

CALL large_salaries3(1)



