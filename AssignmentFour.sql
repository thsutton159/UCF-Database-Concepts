UPDATE room
SET roomtype = 1
WHERE roomtype = 'Critical';

UPDATE room
SET roomtype = 2
WHERE roomtype = 'Private';

UPDATE room
SET roomtype = 3
WHERE roomtype = 'Semi-Private';

ALTER TABLE room
MODIFY COLUMN roomType int not null;

ALTER TABLE room
ADD FOREIGN KEY (roomType) references roomtype(ID);

UPDATE nurse
SET position = 1 
WHERE position = 'Head Nurse';

UPDATE nurse
SET position = 2
WHERE position = 'Nurse';

ALTER TABLE nurse
MODIFY COLUMN position int not null;

ALTER TABLE nurse
ADD FOREIGN KEY (position) REFERENCES position (ID);

UPDATE physician
SET position = 4 
WHERE position = 'Staff Internist';

UPDATE physician
SET position = 5 
WHERE position = 'Attending Physician';

UPDATE physician
SET position = 6
WHERE position = 'Surgical Attending Physician';

UPDATE physician
SET position = 7
WHERE position = 'Senior Attending Physician';

UPDATE physician
SET position = 8
WHERE position = 'Head Chief of Medicine';

UPDATE physician
SET position = 9
WHERE position = 'MD Resident';

UPDATE physician
SET position = 10
WHERE position = 'Attending Psychiatrist';

UPDATE physician
SET position = 11
WHERE position = 'Attending Pediatrician';

UPDATE physician
SET position = 12
WHERE position = 'Intensive Care Surgeon';

UPDATE physician
SET position = 13
WHERE position = 'Head of Diagnostic Medicine';

UPDATE physician
SET position = 14
WHERE position = 'ER Attending';

UPDATE physician
SET position = 15
WHERE position = 'ER Resident';

UPDATE physician
SET position = 16
WHERE position = 'Surgical Intern';

UPDATE physician
SET position = 17
WHERE position = 'Medical Student';

ALTER TABLE physician
MODIFY COLUMN position int not null;

ALTER TABLE physician
ADD FOREIGN KEY (position) REFERENCES position (ID);