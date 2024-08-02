ALTER TABLE physician
ADD CONSTRAINT social UNIQUE(ssn);

ALTER TABLE nurse
ADD CONSTRAINT social UNIQUE(ssn);

ALTER TABLE insurance
ADD CONSTRAINT company UNIQUE(companyName);

ALTER TABLE medicalProcedure
ADD CONSTRAINT procedureName UNIQUE(name);

ALTER TABLE medication
ADD CONSTRAINT medicine UNIQUE(name);

ALTER TABLE position
ADD CONSTRAINT title UNIQUE(title);

ALTER TABLE roomType
ADD CONSTRAINT descRoom UNIQUE(roomDesc);

INSERT INTO position (title)
VALUES('General Medicine');

INSERT INTO physician(lastName, firstName, position, ssn)
VALUES ('Philip', 'Buck', 18, 111223333);

INSERT INTO physician(lastName, firstName, position, ssn)
VALUES ('Apostol', 'Robert', 18, 222334444);

INSERT INTO physician(lastName, firstName, position, ssn)
VALUES ('Badola', 'Jesus', 18, 333445555);

INSERT INTO physician(lastName, firstName, position, ssn)
VALUES ('Altino', 'Rosa', 18, 444556666);

INSERT INTO physician(lastName, firstName, position, ssn)
VALUES ('Hamilton', 'Ann', 18, 555667777);

CREATE TABLE department(
    ID int NOT NULL AUTO_INCREMENT,
    name varchar(50) NOT NULL,
    head int NOT NULL,
    PRIMARY KEY(ID),
    FOREIGN KEY (head) REFERENCES physician(employeeId)
);

INSERT INTO department(name, head)
VALUES('General Medicine', 520);

INSERT INTO department(name, head)
VALUES('Surgery', 501);

INSERT INTO department(name, head)
VALUES('Psychiatry', 508);

INSERT INTO department(name, head)
VALUES('Pediatrics', 509);

INSERT INTO department(name, head)
VALUES('Intensive Care Unit', 510);

INSERT INTO department(name, head)
VALUES('Emergency', 515);

INSERT INTO department(name, head)
VALUES('Oncology', 503);

INSERT INTO department(name, head)
VALUES('Cardiology', 504);
       
INSERT INTO department(name, head)
VALUES('Neurology', 511);
       
INSERT INTO department(name, head)
VALUES('Materinity', 522);

CREATE TABLE onCall(
    ID int NOT NULL AUTO_INCREMENT,
    nurse int NOT NULL,
    blockFloor int  NOT NULL,
    blockCode int NOT NULL,
    startDateTime timestamp NOT NULL,
    endDateTime timestamp NOT NULL,
    PRIMARY KEY(ID),
    FOREIGN KEY (nurse) REFERENCES nurse(employeeId)
);

INSERT INTO onCall(nurse, blockFloor, blockCode, startDateTime, endDateTime)
VALUES(100, 1, 1, '2020-03-01 07:00:00', '2020-03-01 19:00:00');

INSERT INTO onCall(nurse, blockFloor, blockCode, startDateTime, endDateTime)
VALUES(101, 1, 2, '2020-03-01 19:00:00', '2020-03-02 07:00:00');

INSERT INTO onCall(nurse, blockFloor, blockCode, startDateTime, endDateTime)
VALUES (102, 1, 3, '2020-03-02 07:00:00', '2020-03-02 19:00:00');

INSERT INTO onCall(nurse, blockFloor, blockCode, startDateTime, endDateTime)
VALUES (103, 2, 1, '2020-03-02 19:00:00', '2020-03-03 07:00:00');

INSERT INTO onCall(nurse, blockFloor, blockCode, startDateTime, endDateTime)
VALUES (104, 2, 2, '2020-03-03 07:00:00', '2020-03-03 19:00:00');

INSERT INTO onCall(nurse, blockFloor, blockCode, startDateTime, endDateTime)
VALUES (105, 2, 3, '2020-03-03 19:00:00', '2020-03-04 07:00:00');

INSERT INTO onCall(nurse, blockFloor, blockCode, startDateTime, endDateTime)
VALUES (106, 3, 1, '2020-03-04 07:00:00', '2020-03-04 19:00:00');

INSERT INTO onCall(nurse, blockFloor, blockCode, startDateTime, endDateTime)
VALUES (107, 3, 2, '2020-03-04 19:00:00', '2020-03-05 07:00:00');

INSERT INTO onCall(nurse, blockFloor, blockCode, startDateTime, endDateTime)
VALUES (108, 3, 3, '2020-03-05 07:00:00', '2020-03-05 19:00:00');

INSERT INTO onCall(nurse, blockFloor, blockCode, startDateTime, endDateTime)
VALUES (109, 1, 1, '2020-03-05 19:00:00', '2020-03-06 07:00:00');

INSERT INTO onCall(nurse, blockFloor, blockCode, startDateTime, endDateTime)
VALUES (110, 1, 2, '2020-03-06 07:00:00', '2020-03-06 19:00:00');

INSERT INTO onCall(nurse, blockFloor, blockCode, startDateTime, endDateTime)
VALUES (111, 1, 3, '2020-03-06 19:00:00', '2020-03-07 07:00:00');

INSERT INTO onCall(nurse, blockFloor, blockCode, startDateTime, endDateTime)
VALUES (112, 2, 1, '2020-03-07 07:00:00', '2020-03-07 19:00:00');

INSERT INTO onCall(nurse, blockFloor, blockCode, startDateTime, endDateTime)
VALUES (113, 2, 2, '2020-03-07 19:00:00', '2020-03-08 07:00:00');

INSERT INTO onCall(nurse, blockFloor, blockCode, startDateTime, endDateTime)
VALUES (114, 2, 3, '2020-03-08 07:00:00', '2020-03-08 19:00:00');

INSERT INTO onCall(nurse, blockFloor, blockCode, startDateTime, endDateTime)
VALUES (115, 3, 1, '2020-03-08 19:00:00', '2020-03-09 07:00:00');

INSERT INTO onCall(nurse, blockFloor, blockCode, startDateTime, endDateTime)
VALUES (116, 3, 2, '2020-03-09 07:00:00', '2020-03-09 19:00:00');

INSERT INTO onCall(nurse, blockFloor, blockCode, startDateTime, endDateTime)
VALUES (117, 3, 3, '2020-03-09 19:00:00', '2020-03-10 07:00:00');

INSERT INTO onCall(nurse, blockFloor, blockCode, startDateTime, endDateTime)
VALUES (118, 1, 1, '2020-03-10 07:00:00', '2020-03-10 19:00:00');