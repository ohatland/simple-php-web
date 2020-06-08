CREATE TABLE `recipe` 
(
    `ID` INT NOT NULL AUTO_INCREMENT,
    `recipeName` VARCHAR(150) NOT NULL,
    `createdBy` INT NOT NULL,
    `created` DATETIME NOT NULL,
    `alteredBy` INT NOT NULL,
    `altered` DATETIME NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY(createdBy)
        REFERENCES user(ID)
        ON DELETE CASCADE
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `recipeSequence` 
(
	`ID` INT NOT NULL auto_increment,
    `recipeID` INT NOT NULL,
    `recipeSequenceNumber` INT NOT NULL,
    `createdBy` INT NOT NULL,
    `created` DATETIME NOT NULL,
    `alteredBy` INT NOT NULL,
    `altered` DATETIME NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY(createdBy)
        REFERENCES user(ID)
        ON DELETE CASCADE,
    FOREIGN KEY (recipeID) 
        REFERENCES recipe(ID)
        ON DELETE CASCADE    
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `recipeIngredient`
(
    `ID` INT NOT NULL AUTO_INCREMENT,
    `recipeID` INT NOT NULL,
    `recipeSequenceID` INT NOT NULL,
    `ingredientName` VARCHAR(150) NOT NULL,
    `ammount` VARCHAR(200),
    `createdBy` INT NOT NULL,
    `created` DATETIME NOT NULL,
    `alteredBy` INT NOT NULL,
    `altered` DATETIME NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY(createdBy)
        REFERENCES user(ID)
        ON DELETE CASCADE,
    FOREIGN KEY (recipeID) 
        REFERENCES recipe(ID)
        ON DELETE CASCADE,
    FOREIGN KEY (recipeSequenceID)
        REFERENCES recipeSequence(ID)
        ON DELETE CASCADE
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `recipeStep`
(
    `ID` INT NOT NULL AUTO_INCREMENT,
    `recipeID` INT NOT NULL,
    `recipeSequenceID` INT NOT NULL,
    `stepText` VARCHAR(4000) NOT NULL,
    `createdBy` INT NOT NULL,
    `created` DATETIME NOT NULL,
    `alteredBy` INT NOT NULL,
    `altered` DATETIME NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY(createdBy)
        REFERENCES user(ID)
        ON DELETE CASCADE,
    FOREIGN KEY (recipeID) 
        REFERENCES recipe(ID)
        ON DELETE CASCADE,
    FOREIGN KEY (recipeSequenceID)
        REFERENCES recipeSequence(ID)
        ON DELETE CASCADE
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `recipeText`
(
    `ID` INT NOT NULL AUTO_INCREMENT,
    `recipeID` INT NOT NULL,
    `recipeSequenceID` INT NOT NULL,
    `recipeText` VARCHAR(10000) NOT NULL,
    `createdBy` INT NOT NULL,
    `created` DATETIME NOT NULL,
    `alteredBy` INT NOT NULL,
    `altered` DATETIME NOT NULL, 
    PRIMARY KEY (ID),
    FOREIGN KEY(createdBy)
        REFERENCES user(ID)
        ON DELETE CASCADE,
    FOREIGN KEY (recipeID) 
        REFERENCES recipe(ID)
        ON DELETE CASCADE,
    FOREIGN KEY (recipeSequenceID)
        REFERENCES recipeSequence(ID)
        ON DELETE CASCADE
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `recipeImage`
(
    `ID` INT NOT NULL AUTO_INCREMENT,
    `recipeID` INT NOT NULL,
    `recipeSequenceID` INT NOT NULL,
    `imagePath` VARCHAR(200) NOT NULL,
    `imageTitle` VARCHAR(150) NOT NULL,
    `createdBy` INT NOT NULL,
    `created` DATETIME NOT NULL,
    `alteredBy` INT NOT NULL,
    `altered` DATETIME NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY(createdBy)
        REFERENCES user(ID)
        ON DELETE CASCADE,
    FOREIGN KEY (recipeID) 
        REFERENCES recipe(ID)
        ON DELETE CASCADE,
    FOREIGN KEY (recipeSequenceID)
        REFERENCES recipeSequence(ID)
        ON DELETE CASCADE
)   ENGINE=InnoDB DEFAULT CHARSET=utf8;