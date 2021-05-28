#EX.6
CREATE TABLE `people`(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(200) NOT NULL,
`picture` BLOB,
`height` FLOAT(5, 2),
`weight` FLOAT(5,2),
`gender` CHAR(1) NOT NULL,
`birthdate` DATE NOT NULL,
`biography` TEXT
);

#EX. 7
USE `minions`;
CREATE TABLE `users`(
`id` INT PRIMARY KEY UNIQUE AUTO_INCREMENT,
`username` VARCHAR(30) UNIQUE NOT NULL,
`password` VARCHAR(26) NOT NULL,
`profile picture` BLOB,
`last_login_time` DATETIME,
`is_deleted` BOOLEAN 

);

INSERT INTO `users` 
VALUES
(1,'Alexander', 'segesdrahrdh', '123456', '2017-11-05 11:20:21',1),
(2,'Ivan', 'rt5hrt', '515551', '2021-05-05 12:20:21',0),
(3,'Moris', 'rhrte', '54151', '2020-12-12 17:20:15',1),
(4,'Dimitar', 'dimitarperdfv', '44858', '2021-01-01 18:10:21',0),
(5, 'Sofia', 'egtwgt', '484845', '2021-05-28 10:00:01',1);

#EX.8
ALTER TABLE `users`
DROP PRIMARY KEY,
ADD CONSTRAINT pk_users
PRIMARY KEY (`id`, `username`);
	
    #EX.9
    ALTER TABLE `users`
    MODIFY COLUMN last_login_time
    TIMESTAMP
	NOT NULL DEFAULT current_timestamp;


