USE recipies;
INSERT INTO `recipie`
(
    `name`, 
    `owner`, 
    `createdBy`, 
    `created`, 
    `alteredBy`, 
    `altered`
)
VALUES
(
    'Fruktsalat', 
    '1', 
    '1', 
    '2001-04-03 10:10:10',
    '1', 
    '2001-04-03 10:10:10'
);

INSERT INTO `ingredient`
(
    `recipieID`, 
    `sequence`, 
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
    '1',
    '1',
    'Eple',
    '2 kg',
    '1',
    '1', 
    '2001-04-03 10:10:10',
    '1', 
    '2001-04-03 10:10:10'
),
(
    '1',
    '2',
    'Pære',
    '1 kg',
    '1',
    '1', 
    '2001-04-03 10:10:10',
    '1', 
    '2001-04-03 10:10:10'
),
(
    '1',
    '3',
    'Sjokolade',
    '3 kg',
    '1',
    '1', 
    '2001-04-03 10:10:10',
    '1', 
    '2001-04-03 10:10:10'
);

INSERT INTO `steps`
(
    `recipieID`, 
    `sequence`, 
    `stepsText`,
    `owner`, 
    `createdBy`, 
    `created`, 
    `alteredBy`, 
    `altered`
)
VALUES
(
    '1',
    '4',
    'Fjern frø og kutt opp eplene og pærene i perfekte firkantede biter',
    '1',
    '1', 
    '2001-04-03 10:10:10',
    '1', 
    '2001-04-03 10:10:10'
),
(
    '1',
    '5',
    'Tilsett sjokolade og rør rundt',
    '1',
    '1', 
    '2001-04-03 10:10:10',
    '1', 
    '2001-04-03 10:10:10'
);

INSERT INTO `recipieText`
(
    `recipieID`, 
    `sequence`, 
    `recipieText`,
    `owner`, 
    `createdBy`, 
    `created`, 
    `alteredBy`, 
    `altered`
)
VALUES
(
    '1',
    '6',
    'En fantastisk god og enkel fruktsalat med lite fett og mye smak!',
    '1',
    '1', 
    '2001-04-03 10:10:10',
    '1', 
    '2001-04-03 10:10:10'
);

INSERT INTO `image`
(
    `recipieID`, 
    `sequence`, 
    `path`,
    `title`,
    `owner`, 
    `createdBy`, 
    `created`, 
    `alteredBy`, 
    `altered`
)
VALUES
(
    '1',
    '7',
    'c:/malware/',
    'fruktsalat.exe',
    '1',
    '1', 
    '2001-04-03 10:10:10',
    '1', 
    '2001-04-03 10:10:10'
);