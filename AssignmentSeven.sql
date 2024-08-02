ALTER TABLE roomType 
ADD cost decimal(7,2) NOT NULL DEFAULT '0.0';

UPDATE roomType
SET cost = 3528.00
WHERE roomdesc = 'Critical';

UPDATE roomType
SET cost = 1791.00
WHERE roomdesc = 'Private';

UPDATE roomType
SET cost = 895.00
WHERE roomdesc = 'Semi-Private';

INSERT INTO roomType (roomDesc)
VALUE ('Exam');

ALTER TABLE room
DROP COLUMN cost;

INSERT INTO room(roomNumber, roomType, blockFloor, blockCode, available) VALUES
(140,4,1,4,0),
(141,4,1,4,1),
(142,4,1,4,0),
(143,4,1,4,0),
(144,4,1,4,1),
(145,4,1,4,0),
(146,4,1,4,1),
(147,4,1,4,0),
(148,4,1,4,1),
(149,4,1,4,0);

CREATE TABLE appointment(
    ID int NOT NULL AUTO_INCREMENT,
    patient int NOT NULL,
    prepNurse int,
    physician int NOT NULL,
    startDateTime timestamp NOT NULL,
    endDateTime timestamp NOT NULL,
    examRoom int NOT NULL,
    cost decimal(7,2) NOT NULL,
    PRIMARY KEY(ID),
    FOREIGN KEY (patient) REFERENCES patient(ID),
    FOREIGN KEY (physician) REFERENCES physician(employeeId),
    FOREIGN KEY (prepNurse) REFERENCES nurse(employeeId),
    FOREIGN KEY (examRoom) REFERENCES room(roomNumber)
);

CREATE TABLE prescription(
    physicianId int NOT NULL,
    patientId int NOT NULL,
    medicationId int NOT NULL,
    prescribeDate date NOT NULL,
    appointmentId int NOT NULL,
    dose int NOT NULL,
    PRIMARY KEY(physicianId, patientId, medicationId, prescribeDate),
    FOREIGN KEY(patientId) REFERENCES patient(ID),
    FOREIGN KEY(physicianId) REFERENCES physician(employeeId),
    FOREIGN KEY(medicationId) REFERENCES medication(code),
    FOREIGN KEY(appointmentId) REFERENCES appointment(ID)
);

CREATE TABLE admitted(
    ID int NOT NULL AUTO_INCREMENT,
    patientId int NOT NULL,
    roomNumber int NOT NULL,
    startDateTime timestamp NOT NULL,
    endDateTime timestamp NOT NULL,
    PRIMARY KEY(ID),
    FOREIGN KEY (patientId) REFERENCES patient(ID),
    FOREIGN KEY (roomNumber) REFERENCES room(roomNumber)
);

ALTER TABLE admitted AUTO_INCREMENT = 3000;

CREATE TABLE underGoes(
    patientId int NOT NULL,
    procedureCode int NOT NULL,
    admittedId int NOT NULL,
    procedureDate timestamp NOT NULL,
    physicianId int NOT NULL,
    nurseId int NOT NULL,
    PRIMARY KEY(patientId, procedureCode, procedureDate),
    FOREIGN KEY(physicianId) REFERENCES physician(employeeId),
    FOREIGN KEY(admittedId) REFERENCES admitted(ID),
    FOREIGN KEY(nurseId) REFERENCES nurse(employeeId),
    FOREIGN KEY(procedureCode) REFERENCES medicalProcedure(code)
);