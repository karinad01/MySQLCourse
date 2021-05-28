#EX.01
SELECT * FROM soft_uni.employees;

USE `soft_uni`;
SELECT `first_name`, `last_name` FROM `employees`
WHERE LEFT(`first_name`, 2) = 'Sa'
ORDER  BY `employee_id`;

#OTHER WAY OF SOLVING THE PROBLEM
#SELECT `first_name`, `last_name` FROM `employees`
#where substring(`first_name`, 1, 2) = 'Sa';
#ORDER  BY `employee_id`;

#EX.02

SELECT `first_name`, `last_name` FROM `employees`
WHERE `last_name` LIKE '%ei%'
ORDER BY `employee_id`;

#EX.03
SELECT `first_name`
FROM `employees`
WHERE `department_id` IN(3,10)
AND YEAR(`hire_date`) BETWEEN 1995 AND 2005
ORDER BY `employee_id`;

#EX.04
SELECT `first_name`, `last_name` FROM `employees`
WHERE `job_title` NOT LIKE '%engineer%'
ORDER BY `employee_id`;

#EX. 05
SELECT `name` FROM `towns`
WHERE CHAR_LENGTH(`name`) IN (5,6)
ORDER BY `name`;

#EX.06
SELECT * FROM `towns`
WHERE LEFT(`name`, 1) IN ('M', 'K', 'B', 'E')
ORDER BY `name`;

#EX.07
SELECT * FROM `towns`
WHERE LEFT(`name`, 1) NOT IN ('R', 'B', 'D')
ORDER BY `name`;

#EX.08
CREATE VIEW v_employees_hired_after_2000 AS
SELECT `first_name`, `last_name` FROM `employees`
WHERE YEAR(`hire_date`) > 2000;

SELECT * FROM v_employees_hired_after_2000 ;

#EX. 09
SELECT `first_name`, `last_name` FROM `employees`
WHERE CHAR_LENGTH(`last_name`) = 5;


