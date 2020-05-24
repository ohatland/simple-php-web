CREATE TABLE `user` 
(
    `ID` INT NOT NULL AUTO_INCREMENT,
    `firstName` VARCHAR(200) NOT NULL,
    `lastName` VARCHAR(200) NOT NULL,
    `mail` VARCHAR(255) NOT NULL,
    `password` LONGTEXT NOT NULL,
    `createdBy` INT NOT NULL,
    `created` DATETIME NOT NULL,
    `alteredBy` INT NOT NULL,
    `altered` DATETIME NOT NULL,
    PRIMARY KEY (ID)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;