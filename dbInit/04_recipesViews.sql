USE recipes;

CREATE VIEW ingredientSequence AS
SELECT i.recipeID, ingredientName, rs.recipeSequenceNumber FROM recipeSequence rs 
INNER JOIN recipeIngredient i ON i.recipeSequenceID = rs.ID;

CREATE VIEW imageSequence AS
SELECT i.recipeID, imagePath, imageTitle,  rs.recipeSequenceNumber FROM recipeSequence rs 
INNER JOIN recipeImage i ON i.recipeSequenceID = rs.ID;

CREATE VIEW recipeTextSequence AS
SELECT rt.recipeID, recipeText, rs.recipeSequenceNumber FROM recipeSequence rs 
INNER JOIN recipeText rt ON rt.recipeSequenceID = rs.ID;

CREATE VIEW stepSequence AS
SELECT s.recipeID, stepText, rs.recipeSequenceNumber FROM recipeSequence rs 
INNER JOIN recipeStep s ON s.recipeSequenceID = rs.ID;

CREATE VIEW recipeInSequence AS
SELECT 
r.recipeName,
r.createdBy,
r.ID AS recipeID,
rs.ID AS recipeSequenceID,
rs.recipeSequenceNumber,
i.ingredientName,
i.ammount,
im.imagePath,
im.imageTitle,
rt.recipeText,
s.stepText

FROM recipeSequence rs
LEFT JOIN recipeIngredient i ON (i.recipeSequenceID = rs.ID AND i.recipeID = rs.recipeID)
LEFT JOIN recipeImage im ON (im.recipeSequenceID = rs.ID AND im.recipeID = rs.recipeID)
LEFT JOIN recipeText rt ON (rt.recipeSequenceID = rs.ID AND rt.recipeID = rs.recipeID)
LEFT JOIN recipeStep s ON (s.recipeSequenceID = rs.ID AND s.recipeID = rs.recipeID)
LEFT JOIN recipe r ON ( r.ID = rs.recipeID)
order by recipeSequenceNumber;