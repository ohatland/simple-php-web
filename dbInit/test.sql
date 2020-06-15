DELIMITER $$

CREATE PROCEDURE sp_selectHigherRecipeSequenceNumbers (IN recipeID INT, sequenceNumber INT)
BEGIN

SELECT ID FROM recipeSequence
WHERE recipeID = recipeID AND recipeSequenceNumber >= sequenceNumber;

END
$$
DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_updateSequenceNumber (IN recipeSequenceID INT, newSequenceNumber INT)
BEGIN

UPDATE recipeSequence
SET recipeSequenceNumber = newSequenceNumber
WHERE ID = recipeSequenceID;

END
$$
DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_updateRecipeIngredient (IN sequenceNumber INT, recipeID INT, newIngredientName VARCHAR(150), newAmmount VARCHAR(200))
BEGIN

UPDATE recipeIngredient
SET ingredientName = newIngredientName, ammount = newAmmount
WHERE recipeID = recipeID AND sequenceNumber = sequenceNumber;

END
$$
DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_updateRecipeStep (IN sequenceNumber INT, recipeID INT, newStepText VARCHAR(4000))
BEGIN

UPDATE recipeStep
SET stepText = newStepText
WHERE recipeID = recipeID AND sequenceNumber = sequenceNumber;

END
$$
DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_updateRecipeText (IN sequenceNumber INT, recipeID INT, newRecipeText VARCHAR(10000))
BEGIN

UPDATE recipeText
SET recipeText = newRecipeText
WHERE recipeID = recipeID AND sequenceNumber = sequenceNumber;

END
$$
DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_updateRecipeImage (IN sequenceNumber INT, recipeID INT, newImagePath VARCHAR(200), newImageTitle VARCHAR(150))
BEGIN

UPDATE recipeImage
SET imagePath = newImagePath, imageTitle = newImageTitle
WHERE recipeID = recipeID AND sequenceNumber = sequenceNumber;

END
$$
DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_deleteRecipe (IN recipeID INT)
BEGIN

DELETE FROM recipe
WHERE ID = recipeID;

END
$$
DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_deleteRecipeSequence (IN sequenceNumber INT, recipeID INT)
BEGIN

DELETE FROM recipeSequence
WHERE recipeID = recipeID AND sequenceNumber = sequenceNumber;

END
$$
DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_deleteUser (IN userID INT)
BEGIN

DELETE FROM user
WHERE ID = userID;

END
$$
DELIMITER ;