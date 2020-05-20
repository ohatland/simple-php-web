USE recipies;


DELIMITER $$
CREATE PROCEDURE sp_InsertRecipie (IN recipieName VARCHAR(150), userID INT, OUT recipieID INT)
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
INSERT INTO ingredient (recipieID, recipieSequenceID, ingredientName, ammount, owner, createdBy, created, alteredBy, altered)
VALUES (recipieID, @recipieSequenceID, ingredientName, ammount, userID, userID, @currentDatetime, userID, @currentDatetime);
END
$$
DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_InsertRecipieText (IN recipieID INT, sequenceNumber INT, userID INT, recipieText VARCHAR(10000))
BEGIN
CALL sp_InsertRecipieSeqence(recipieID, sequenceNumber, userID, @recipieSequenceID);
SET @currentDatetime = CURRENT_TIMESTAMP();
INSERT INTO recipieText (recipieID, recipieSequenceID, recipieText, owner, createdBy, created, alteredBy, altered)
VALUES (recipieID, @recipieSequenceID, recipieText, userID, userID, @currentDatetime, userID, @currentDatetime);
END
$$
DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_InsertStep (IN recipieID INT, sequenceNumber INT, userID INT, stepText VARCHAR(4000))
BEGIN
CALL sp_InsertRecipieSeqence(recipieID, sequenceNumber, userID, @recipieSequenceID);
SET @currentDatetime = CURRENT_TIMESTAMP();
INSERT INTO step (recipieID, recipieSequenceID, stepText, owner, createdBy, created, alteredBy, altered)
VALUES (recipieID, @recipieSequenceID, stepText, userID, userID, @currentDatetime, userID, @currentDatetime);
END
$$
DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_SelectRecipie (IN recipie_ID INT)
BEGIN

SELECT * FROM recipieInSequence WHERE recipieID = recipie_ID;

END
$$
DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_SelectAllRecipies ()
BEGIN

SELECT recipieName, owner, ID FROM recipie
ORDER BY recipieName;

END
$$
DELIMITER ;


CALL sp_InsertRecipie("Brownies", 1, @recipieID);
CALL sp_InsertIngredient(@recipieID, 1, 1, "Mel", "300 gram");
CALL sp_InsertIngredient(@recipieID, 2, 1, "Sukker", "200 gram");
CALL sp_InsertIngredient(@recipieID, 3, 1, "Kanel", "10 gram");
CALL sp_InsertIngredient(@recipieID, 4, 1, "Lime Jucie", "2 SS");
CALL sp_InsertStep(@recipieID,5,1, "Steg 1");
CALL sp_InsertStep(@recipieID,6,1, "Steg 2");
CALL sp_InsertStep(@recipieID,7,1, "Steg 3");
CALL sp_InsertRecipieText(@recipieID,8,1, "Beskrivelse av oppskrift");
CALL sp_InsertImage(@recipieID,9,1, "C:/windows/malware.exe", "Malware");

CALL sp_InsertRecipie("Kake", 1, @recipieID);
CALL sp_InsertIngredient(@recipieID, 1, 1, "Mel", "300 gram");
CALL sp_InsertIngredient(@recipieID, 2, 1, "Sukker", "200 gram");
CALL sp_InsertIngredient(@recipieID, 3, 1, "Kanel", "10 gram");
CALL sp_InsertIngredient(@recipieID, 4, 1, "Lime Jucie", "2 SS");
CALL sp_InsertStep(@recipieID,5,1, "Steg 1");
CALL sp_InsertStep(@recipieID,6,1, "Steg 2");
CALL sp_InsertStep(@recipieID,7,1, "Steg 3");
CALL sp_InsertRecipieText(@recipieID,8,1, "Beskrivelse av oppskrift");
CALL sp_InsertImage(@recipieID,9,1, "C:/windows/malware.exe", "Malware");

CALL sp_InsertRecipie("Saft", 1, @recipieID);
CALL sp_InsertIngredient(@recipieID, 1, 1, "Vann", "3 liter");
CALL sp_InsertIngredient(@recipieID, 2, 1, "Sukker", "200 gram");
CALL sp_InsertIngredient(@recipieID, 3, 1, "Appelsin Jucie", "5 dl");
CALL sp_InsertIngredient(@recipieID, 4, 1, "Lime Jucie", "2 SS");
CALL sp_InsertStep(@recipieID,5,1, "Steg 1");
CALL sp_InsertStep(@recipieID,6,1, "Steg 2");
CALL sp_InsertStep(@recipieID,7,1, "Steg 3");
CALL sp_InsertRecipieText(@recipieID,8,1, "Beskrivelse av oppskrift");
CALL sp_InsertImage(@recipieID,9,1, "C:/windows/malware.exe", "Malware");

