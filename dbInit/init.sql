CREATE DATABASE testDB;
USE testDB;

CREATE TABLE `testDB`.`testTable` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

INSERT INTO `testDB`.`testTable`
(`name`)
VALUES
('Onkel Donald'),
('Fetter Anton'),
('Ole'),
('Dole'),
('Doffen');

CREATE USER 'testUser' IDENTIFIED BY 'testPassword';
GRANT ALL PRIVILEGES ON testDB.* TO 'testUser';