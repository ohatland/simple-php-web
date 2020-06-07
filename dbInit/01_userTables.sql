CREATE TABLE `user` 
(
    `ID` INT NOT NULL AUTO_INCREMENT,
    `firstName` VARCHAR(200) NOT NULL,
    `lastName` VARCHAR(200) NOT NULL,
    `mail` VARCHAR(255) NOT NULL,
    `userPassword` LONGTEXT NOT NULL,
    `createdBy` INT,
    `created` DATETIME NOT NULL,
    `alteredBy` INT,
    `altered` DATETIME NOT NULL,
    PRIMARY KEY (ID)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;
