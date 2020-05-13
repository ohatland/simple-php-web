CREATE DATABASE recipies;
USE recipies;

CREATE TABLE `recipie` 
(
    `ID` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(150) NOT NULL,
    `owner` INT NOT NULL,
    `createdBy` INT NOT NULL,
    `created` DATETIME NOT NULL,
    `alteredBy` INT NOT NULL,
    `altered` DATETIME NOT NULL,
    PRIMARY KEY (ID)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ingredient`
(
    `ID` INT NOT NULL AUTO_INCREMENT,
    `recipieID` INT NOT NULL,
    `sequence` INT NOT NULL,
    `ingredientName` VARCHAR(150) NOT NULL,
    `ammount` VARCHAR(200),
    `owner` INT NOT NULL,
    `createdBy` INT NOT NULL,
    `created` DATETIME NOT NULL,
    `alteredBy` INT NOT NULL,
    `altered` DATETIME NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (recipieID) 
        REFERENCES recipie(ID)
        ON DELETE CASCADE
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `steps`
(
    `ID` INT NOT NULL AUTO_INCREMENT,
    `recipieID` INT NOT NULL,
    `sequence` INT NOT NULL,
    `stepsText` VARCHAR(4000) NOT NULL,
    `owner` INT NOT NULL,
    `createdBy` INT NOT NULL,
    `created` DATETIME NOT NULL,
    `alteredBy` INT NOT NULL,
    `altered` DATETIME NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (recipieID) 
        REFERENCES recipie(ID)
        ON DELETE CASCADE
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `recipieText`
(
    `ID` INT NOT NULL AUTO_INCREMENT,
    `recipieID` INT NOT NULL,
    `sequence` INT NOT NULL,
    `recipieText` VARCHAR(10000) NOT NULL,
    `owner` INT NOT NULL,
    `createdBy` INT NOT NULL,
    `created` DATETIME NOT NULL,
    `alteredBy` INT NOT NULL,
    `altered` DATETIME NOT NULL, 
    PRIMARY KEY (ID),
    FOREIGN KEY (recipieID) 
        REFERENCES recipie(ID)
        ON DELETE CASCADE
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `image`
(
    `ID` INT NOT NULL AUTO_INCREMENT,
    `recipieID` INT NOT NULL,
    `sequence` int NOT NULL,
    `path` VARCHAR(200) NOT NULL,
    `title` VARCHAR(150) NOT NULL,
    `owner` INT NOT NULL,
    `createdBy` INT NOT NULL,
    `created` DATETIME NOT NULL,
    `alteredBy` INT NOT NULL,
    `altered` DATETIME NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (recipieID) 
        REFERENCES recipie(ID)
        ON DELETE CASCADE
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;