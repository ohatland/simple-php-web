CREATE DATABASE recipies;
USE recipies;

CREATE TABLE `recipie` 
(
    `ID` INT NOT NULL AUTO_INCREMENT,
    `recipieName` VARCHAR(150) NOT NULL,
    `owner` INT NOT NULL,
    `createdBy` INT NOT NULL,
    `created` DATETIME NOT NULL,
    `alteredBy` INT NOT NULL,
    `altered` DATETIME NOT NULL,
    PRIMARY KEY (ID)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `recipieSequence` 
(
	`ID` INT NOT NULL auto_increment,
    `recipieID` INT NOT NULL,
    `recipieSequenceNumber` INT NOT NULL,
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

CREATE TABLE `ingredient`
(
    `ID` INT NOT NULL AUTO_INCREMENT,
    `recipieID` INT NOT NULL,
    `recipieSequenceID` INT NOT NULL,
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
        ON DELETE CASCADE,
    FOREIGN KEY (recipieSequenceID)
        REFERENCES recipieSequence(ID)
        ON DELETE CASCADE
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `step`
(
    `ID` INT NOT NULL AUTO_INCREMENT,
    `recipieID` INT NOT NULL,
    `recipieSequenceID` INT NOT NULL,
    `stepText` VARCHAR(4000) NOT NULL,
    `owner` INT NOT NULL,
    `createdBy` INT NOT NULL,
    `created` DATETIME NOT NULL,
    `alteredBy` INT NOT NULL,
    `altered` DATETIME NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (recipieID) 
        REFERENCES recipie(ID)
        ON DELETE CASCADE,
    FOREIGN KEY (recipieSequenceID)
        REFERENCES recipieSequence(ID)
        ON DELETE CASCADE
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `recipieText`
(
    `ID` INT NOT NULL AUTO_INCREMENT,
    `recipieID` INT NOT NULL,
    `recipieSequenceID` INT NOT NULL,
    `recipieText` VARCHAR(10000) NOT NULL,
    `owner` INT NOT NULL,
    `createdBy` INT NOT NULL,
    `created` DATETIME NOT NULL,
    `alteredBy` INT NOT NULL,
    `altered` DATETIME NOT NULL, 
    PRIMARY KEY (ID),
    FOREIGN KEY (recipieID) 
        REFERENCES recipie(ID)
        ON DELETE CASCADE,
    FOREIGN KEY (recipieSequenceID)
        REFERENCES recipieSequence(ID)
        ON DELETE CASCADE
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `image`
(
    `ID` INT NOT NULL AUTO_INCREMENT,
    `recipieID` INT NOT NULL,
    `recipieSequenceID` INT NOT NULL,
    `imagePath` VARCHAR(200) NOT NULL,
    `imageTitle` VARCHAR(150) NOT NULL,
    `owner` INT NOT NULL,
    `createdBy` INT NOT NULL,
    `created` DATETIME NOT NULL,
    `alteredBy` INT NOT NULL,
    `altered` DATETIME NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (recipieID) 
        REFERENCES recipie(ID)
        ON DELETE CASCADE,
    FOREIGN KEY (recipieSequenceID)
        REFERENCES recipieSequence(ID)
        ON DELETE CASCADE
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;