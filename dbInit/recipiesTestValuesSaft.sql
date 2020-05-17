USE recipies;
INSERT INTO `recipie`
(
    `recipieName`, 
    `owner`, 
    `createdBy`, 
    `created`, 
    `alteredBy`, 
    `altered`
)
VALUES
(
    'Mors hjemmelagde bringebærsaft', 
    '1', 
    '1', 
    '2001-04-03 10:10:10',
    '1', 
    '2001-04-03 10:10:10'
);

INSERT INTO `recipieSequence`
(
    `recipieID`, 
    `recipieSequenceNumber`,
    `owner`, 
    `createdBy`, 
    `created`, 
    `alteredBy`, 
    `altered`
)
VALUES
(
    '2',
    '1',
    '1',
    '1', 
    '2001-04-03 10:10:10',
    '1', 
    '2001-04-03 10:10:10'
),
(
    '2',
    '2',
    '1',
    '1', 
    '2001-04-03 10:10:10',
    '1', 
    '2001-04-03 10:10:10'
),
(
    '2',
    '3',
    '1',
    '1', 
    '2001-04-03 10:10:10',
    '1', 
    '2001-04-03 10:10:10'
),
(
    '2',
    '4',
    '1',
    '1', 
    '2001-04-03 10:10:10',
    '1', 
    '2001-04-03 10:10:10'
),
(
    '2',
    '5',
    '1',
    '1', 
    '2001-04-03 10:10:10',
    '1', 
    '2001-04-03 10:10:10'
),
(
    '2',
    '6',
    '1',
    '1', 
    '2001-04-03 10:10:10',
    '1', 
    '2001-04-03 10:10:10'
),
(
    '2',
    '7',
    '1',
    '1', 
    '2001-04-03 10:10:10',
    '1', 
    '2001-04-03 10:10:10'
);

INSERT INTO `ingredient`
(
    `recipieID`, 
    `recipieSequenceID`,
    `ingredientName`, 
    `ammount`, 
    `owner`, 
    `createdBy`, 
    `created`, 
    `alteredBy`, 
    `altered`
)
VALUES
(
    '2',
    '1',
    'Bringebær',
    '1 kg',
    '1',
    '1', 
    '2001-04-03 10:10:10',
    '1', 
    '2001-04-03 10:10:10'
),
(
    '2',
    '2',
    'Sukker',
    '1 kg',
    '1',
    '1', 
    '2001-04-03 10:10:10',
    '1', 
    '2001-04-03 10:10:10'
),
(
    '2',
    '3',
    'Vann',
    '3 Liter',
    '1',
    '1', 
    '2001-04-03 10:10:10',
    '1', 
    '2001-04-03 10:10:10'
);

INSERT INTO `step`
(
    `recipieID`, 
    `recipieSequenceID`,
    `stepText`,
    `owner`, 
    `createdBy`, 
    `created`, 
    `alteredBy`, 
    `altered`
)
VALUES
(
    '2',
    '4',
    'Knus bringebær i en stor bolle',
    '1',
    '1', 
    '2001-04-03 10:10:10',
    '1', 
    '2001-04-03 10:10:10'
),
(
    '2',
    '5',
    'Tilsett vann og sukker og rør rundt',
    '1',
    '1', 
    '2001-04-03 10:10:10',
    '1', 
    '2001-04-03 10:10:10'
);

INSERT INTO `recipieText`
(
    `recipieID`, 
    `recipieSequenceID`,
    `recipieText`,
    `owner`, 
    `createdBy`, 
    `created`, 
    `alteredBy`, 
    `altered`
)
VALUES
(
    '2',
    '6',
    'Akuratt som hjemme',
    '1',
    '1', 
    '2001-04-03 10:10:10',
    '1', 
    '2001-04-03 10:10:10'
);

INSERT INTO `image`
(
    `recipieID`,
    `recipieSequenceID`, 
    `imagePath`,
    `imageTitle`,
    `owner`, 
    `createdBy`, 
    `created`, 
    `alteredBy`, 
    `altered`
)
VALUES
(
    '2',
    '7',
    'c:/malware/saft.exe',
    'Saft',
    '1',
    '1', 
    '2001-04-03 10:10:10',
    '1', 
    '2001-04-03 10:10:10'
);

