UPDATE physician
SET lastName = 'Buck'
WHERE employeeId = 519;

UPDATE physician
SET firstName = 'Philips'
WHERE employeeId = 519;

UPDATE physician
SET lastName = 'Robert'
WHERE employeeId = 520;

UPDATE physician
SET firstName = 'Apostal'
WHERE employeeId = 520;

UPDATE physician
SET lastName = 'Jesus'
WHERE employeeId = 521;

UPDATE physician
SET firstName = 'Badola'
WHERE employeeId = 521;

UPDATE physician
SET lastName = 'Rosa'
WHERE employeeId = 522;

UPDATE physician
SET firstName = 'Altino'
WHERE employeeId = 522;

UPDATE physician
SET lastName = 'Ann'
WHERE employeeId = 523;

UPDATE physician
SET firstName = 'Hamilton'
WHERE employeeId = 523;

ALTER TABLE physician
CHANGE lastName tempName varchar(50) NOT NULL;

ALTER TABLE physician
CHANGE firstName lastName varchar(50) NOT NULL;

ALTER TABLE physician
CHANGE tempName firstName varchar(50) NOT NULL;