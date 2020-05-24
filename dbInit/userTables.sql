CREATE TABLE `user` 
(
    `ID` INT NOT NULL AUTO_INCREMENT,
    `firstName` VARCHAR(150) NOT NULL,
    `lastName` VARCHAR(150) NOT NULL,
    `mail` VARCHAR(150) NOT NULL,
    `createdBy` INT NOT NULL,
    `created` DATETIME NOT NULL,
    `alteredBy` INT NOT NULL,
    `altered` DATETIME NOT NULL,
    PRIMARY KEY (ID)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;