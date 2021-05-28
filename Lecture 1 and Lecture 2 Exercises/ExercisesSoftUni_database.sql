CREATE DATABASE `soft_uni`;
USE soft_uni;

CREATE TABLE `towns` (
`id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(30) NOT NULL
);

CREATE TABLE `addresses`(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`addresses_text` VARCHAR(100) NOT NULL,
`town_id` INT NOT NULL,
CONSTRAINT fk_addresses_towns
FOREIGN KEY(`town_id`) REFERENCES `towns`(`id`)
);

CREATE TABLE `departments`(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(30) NOT NULL
);

CREATE TABLE `employees` (
`id` INT PRIMARY KEY AUTO_INCREMENT,
`first_name` VARCHAR(30) NOT NULL,
`middle_name` VARCHAR(30) NOT NULL,
`last_name` VARCHAR(30) NOT NULL,
`job_title` VARCHAR(20),
`salary` DECIMAL(10,2),
`department_id` INT,
`hire_date` DATE,
`address_id` INT
);

ALTER TABLE `employees`
ADD CONSTRAINT fk_employees_departments
FOREIGN KEY (`department_id`) REFERENCES `departments`(`id`);

ALTER TABLE `employees`
ADD CONSTRAINT fk_employees_addresses
FOREIGN KEY(`address_id`) REFERENCES `addresses`(`id`);


INSERT INTO `towns`(`name`)
VALUES 
('Sofia'),
('Plovdiv'),
('Varna'),
('Burgas');

INSERT INTO `departments`(`name`)
VALUES
('Engineering'),
('Sales'),
('Marketing'),
('Software Development'),
('Quality Assurance');

INSERT INTO `employees`
values
(1, 'Ivan', 'Ivanov', 'Ivanov', '.NET Developer',3500.00, 4, '2013-02-01'),
(2, 'Petar', 'Petkov', 'Petrov', 'Senior Developer',4000.00, 1, '2004-01-02');

