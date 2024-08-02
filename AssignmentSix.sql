CREATE TABLE patient(
    ID int NOT NULL AUTO_INCREMENT,
    ssn char(9) NOT NULL UNIQUE,
    lastName varchar(50) NOT NULL,
    firstName varchar(50) NOT NULL,
    address varchar(50) NOT NULL,
    phone char(10) NOT NULL,
    insuranceId int,
    insuranceAct int,
    pcp int NOT NULL,
    PRIMARY KEY(ID),
    FOREIGN KEY (insuranceId) REFERENCES insurance(ID),
    FOREIGN KEY (pcp) REFERENCES physician(employeeID)
);

ALTER TABLE patient AUTO_INCREMENT = 2000;

INSERT INTO patient (ssn, lastName, firstName, address, phone, insuranceId, insuranceAct, pcp) Values
('100000001', 'Smith', 'John', '42 Foobar Lane', '1235550256', 1000, 68476213, 523);

INSERT INTO patient (ssn, lastName, firstName, address, phone, insuranceId, insuranceAct, pcp) Values
('100000002', 'Ritchie', 'Grace', '37 Snafu Drive', '1235550512', 1011, 36546321, 522);

INSERT INTO patient (ssn, lastName, firstName, address, phone, insuranceId, insuranceAct, pcp) Values
('100000003', 'Patient', 'Random', '101 Omgbbq Street', '1235551204', 1018, 65465421, 520);

INSERT INTO patient (ssn, lastName, firstName, address, phone, insuranceId, insuranceAct, pcp) Values
('100000004', 'Doe', 'Dennis', '1100 Foobaz Avenue', '1235552048', 1005, 68421879, 521);