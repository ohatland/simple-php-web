USE recipies;

CREATE VIEW ingredientSequence AS
SELECT i.recipieID, ingredientName, rs.recipieSequenceNumber FROM recipieSequence rs 
INNER JOIN ingredient i ON i.recipieSequenceID = rs.ID;

CREATE VIEW imageSequence AS
SELECT i.recipieID, imagePath, imageTitle,  rs.recipieSequenceNumber FROM recipieSequence rs 
INNER JOIN image i ON i.recipieSequenceID = rs.ID;

CREATE VIEW recipieTextSequence AS
SELECT rt.recipieID, recipieText, rs.recipieSequenceNumber FROM recipieSequence rs 
INNER JOIN recipieText rt ON rt.recipieSequenceID = rs.ID;

CREATE VIEW stepSequence AS
SELECT s.recipieID, stepText, rs.recipieSequenceNumber FROM recipieSequence rs 
INNER JOIN step s ON s.recipieSequenceID = rs.ID;

CREATE VIEW recipieInSequence AS
SELECT 
r.recipieName,
r.owner,
r.ID AS recipieID,
rs.ID AS recipieSequenceID,
rs.recipieSequenceNumber,
i.ingredientName,
i.ammount,
im.imagePath,
im.imageTitle,
rt.recipieText,
s.stepText

FROM recipieSequence rs
LEFT JOIN ingredient i ON (i.recipieSequenceID = rs.ID AND i.recipieID = rs.recipieID)
LEFT JOIN image im ON (im.recipieSequenceID = rs.ID AND im.recipieID = rs.recipieID)
LEFT JOIN recipieText rt ON (rt.recipieSequenceID = rs.ID AND rt.recipieID = rs.recipieID)
LEFT JOIN step s ON (s.recipieSequenceID = rs.ID AND s.recipieID = rs.recipieID)
LEFT JOIN recipie r ON ( r.ID = rs.recipieID)
order by recipieSequenceNumber;