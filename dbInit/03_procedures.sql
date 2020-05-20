USE recipies;


DELIMITER $$
CREATE PROCEDURE sp_InsertRecipie (IN recipieName VARCHAR(150), userID INT, OUT recipieID)
BEGIN
SET @currentDatetime = CURRENT_TIMESTAMP();
INSERT INTO recipie (recipieName, owner, createdBy, created, alteredBy, altered)
VALUES (recipieName, userID, userID, @currentDatetime, userID, @currentDatetime);
SET recipieID = LAST_INSERT_ID();
END
$$
DELIMITER ;



DELIMITER $$
CREATE PROCEDURE sp_InsertRecipieSeqence (recipieID INT, recipieSequenceNumber INT, userID INT, OUT recipieSequenceID INT)
BEGIN

SET @currentDatetime = CURRENT_TIMESTAMP();

INSERT INTO recipieSequence (recipieID, recipieSequenceNumber, owner, createdBy, created, alteredBy, altered)
VALUES (recipieID, recipieSequenceNumber, userID, userID, @currentDatetime, userID, @currentDatetime);
SET recipieSequenceID = LAST_INSERT_ID();
END
$$
DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_InsertImage (IN recipieID INT, sequenceNumber INT, userID INT, imagePath VARCHAR(200), imageTitle VARCHAR(150))
BEGIN
CALL sp_InsertRecipieSeqence(recipieID, sequenceNumber, userID, @recipieSequenceID);
SET @currentDatetime = CURRENT_TIMESTAMP();
INSERT INTO image (recipieID, recipieSequenceID, imagePath, imageTitle, owner, createdBy, created, alteredBy, altered)
VALUES (recipieID, @recipieSequenceID, imagePath, imageTitle, userID, userID, @currentDatetime, userID, @currentDatetime);
END
$$
DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_InsertIngredient (IN recipieID INT, sequenceNumber INT, userID INT, ingredientName VARCHAR(150), ammount VARCHAR(200))
BEGIN
CALL sp_InsertRecipieSeqence(recipieID, sequenceNumber, userID, @recipieSequenceID);
SET @currentDatetime = CURRENT_TIMESTAMP();
INSERT INTO image (recipieID, recipieSequenceID, ingredientName, ammount, owner, createdBy, created, alteredBy, altered)
VALUES (recipieID, @recipieSequenceID, ingredientName, ammount, userID, userID, @currentDatetime, userID, @currentDatetime);
END
$$
DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_InsertRecipeText (IN recipieID INT, sequenceNumber INT, userID INT, recipieText VARCHAR(10000))
BEGIN
CALL sp_InsertRecipieSeqence(recipieID, sequenceNumber, userID, @recipieSequenceID);
SET @currentDatetime = CURRENT_TIMESTAMP();
INSERT INTO recipieText (recipieID, recipieSequenceID, recipieText, owner, createdBy, created, alteredBy, altered)
VALUES (recipieID, @recipieSequenceID, imagePath, imageTitle, userID, userID, @currentDatetime, userID, @currentDatetime);
END
$$
DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_InsertStep (IN recipieID INT, sequenceNumber INT, userID INT, stepText VARCHAR(4000))
BEGIN
CALL sp_InsertRecipieSeqence(recipieID, sequenceNumber, userID, @recipieSequenceID);
SET @currentDatetime = CURRENT_TIMESTAMP();
INSERT INTO image (recipieID, recipieSequenceID, stepText, owner, createdBy, created, alteredBy, altered)
VALUES (recipieID, @recipieSequenceID, stepText, userID, userID, @currentDatetime, userID, @currentDatetime);
END
$$
DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_SelectRecipie (IN recipieID INT)
BEGIN

SELECT * FROM recipieInSequence WHERE recipieID = recipieID;

END
$$
DELIMITER ;