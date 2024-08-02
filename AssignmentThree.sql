INSERT INTO medication(name, brand, cost, description)
VALUES ('Acetaminophen', 'Gemini Pharmaceuticals', 69.80,'pain reliever and a fever reducer');

INSERT INTO medication(name, brand, cost, description)
VALUES ('Adderall', 'Shire Pharmaceuticals', 71.90,'treat attention deficit hyperactivity disorder (ADHD) and narcolepsy');

INSERT INTO medication(name, brand, cost, description)
VALUES ('Ciprofloxacin', 'Pfizer', 19.95,'treat different types of bacterial infections');

INSERT INTO medication(name, brand, cost, description)
VALUES  ('Clonazepam', 'Watson Pharmaceuticals', 35.56,'treat seizures and certain types ofanxiety disorders');

INSERT INTO medication(name, brand, cost, description)
VALUES  ('Doxycycline', 'Pfizer', 81.50,'treat many different bacterial infections');

INSERT INTO medication(name, brand, cost, description)
VALUES ('Gabapentin', 'Pfizer', 68.67,'treat neuropathic pain (nerve pain)');

INSERT INTO medication(name, brand, cost, description)
VALUES ('Hydrochlorothiazide', 'Jubilant Cadista Pharmaceuticals', 16.77,'used to treat fluid retention (edema)');

INSERT INTO medication(name, brand, cost, description)
VALUES ('Lexapro', 'Forest Laboratories', 260.00,'used to treat anxiety in adults');

INSERT INTO medication(name, brand, cost, description)
VALUES ('Meloxicam', 'Boehringer Ingelheim Pharmaceuticals', 50.00,'used to treat pain or inflammation caused by rheumatoid arthritis and osteoarthritis');

INSERT INTO medication(name, brand, cost, description)
VALUES ('Omeprazole', 'Kremers Urban Pharmaceuticals', 60.00,'used to treat symptoms of gastroesophageal reflux disease (GERD)');

INSERT INTO medication(name, brand, cost, description)
VALUES ('Oxycodone', 'Purdue Pharma', 80.50,'used to treat moderate to severe pain');

INSERT INTO medication(name, brand, cost, description)
VALUES ('Pantoprazole', 'Pfizer', 68.84,'used to treat erosive esophagitis (damage to the esophagus from stomach acid');

INSERT INTO medication(name, brand, cost, description)
VALUES ('Trazodone', 'PubChem', 14.63,'used to treat major depressive disorder');

INSERT INTO medication(name, brand, cost, description)
VALUES ('Zoloft', 'Pfizer', 34.99,'used to treat depression, obsessive-compulsive disorder, panic disorder, anxiety disorders');

CREATE TABLE roomType(
ID  int not null AUTO_INCREMENT,
roomDesc   varchar(15) not null,
PRIMARY KEY(ID)
);

CREATE TABLE position (
ID  int not null AUTO_INCREMENT,
title   varchar(50) not null,
PRIMARY KEY(ID)
);

UPDATE nurse
SET position = 'Nurse'
WHERE employeeId = 107;

UPDATE nurse
SET ssn = 998745622
WHERE employeeId = 114;

INSERT INTO roomType(roomDesc)
SELECT DISTINCT roomType
FROM room;

INSERT INTO position (title)
SELECT DISTINCT position
FROM nurse;

INSERT INTO position (title)
SELECT DISTINCT position
FROM physician;