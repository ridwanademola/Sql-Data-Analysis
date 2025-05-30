-- TRIGGERS AND EVENTS 
-- A TRIGGERS IS A BLOCK OF CODE THAT EXECUTE AUTOMATICALLY WHEN AN EVENTS TAKES PLACE ON A SPECIFIC TABLE--

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

DELIMITER $$
CREATE TRIGGER employee_insert
	AFTER INSERT ON employee_salary
    FOR EACH ROW
BEGIN
	INSERT INTO employee_demographics(employee_id, first_name, last_name)
    VALUES(NEW.employee_id, NEW.first_name, NEW.last_name);

END $$
DELIMITER ;

-- THEN LET INSERT
INSERT INTO employee_salary(employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES(13, 'Jean-Raphio', 'Saparstein', 'Entertainment', 1000000, NULL);

-- EVENTS--
-- AN EVENTS TAKES PLACE WHEN ITS SCHEDULE. SO ITS MORE OF A SCHEDDULE AUTOMATOR---

SELECT *
FROM employee_demographics;
DELIMITER $$
CREATE EVENT delete_retirees
ON SCHEDULE EVERY 30 second
DO 
BEGIN 
	DELETE
    FROM employee_demographics
    WHERE age >= 60;
END $$
DELIMITER ;


SHOW VARIABLES LIKE 'event%';
