CREATE DATABASE LAROSA2C;
USE LAROSA2C;

CREATE TABLE Patient_Info (
	pID INT auto_increment PRIMARY KEY,
    fName VARCHAR (255) NOT NULL,
    lName VARCHAR (255) NOT NULL,
    phone VARCHAR (20) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR (20) NOT NULL,
	address TEXT
);

CREATE TABLE Status_Sched(
	statID INT auto_increment PRIMARY KEY,
    statName VARCHAR (50) NOT NULL
);


CREATE TABLE Appointment (
	aID INT auto_increment,
    patient_id INT,
    status_id INT,
    aDate DATE NOT NULL,
    aTime TIME NOT NULL,
    dentServ VARCHAR (100) NOT NULL,
    PRIMARY KEY (aID),
	FOREIGN KEY (patient_id) REFERENCES Patient_Info(pID),
    FOREIGN KEY (status_id) REFERENCES Status_Sched(statID)
);


 INSERT INTO Patient_Info (fName, lName, phone, age, gender, address)
 VALUES ("Rodeliza", "La Rosa", "09917940261", 21, "Female", "Mingla");

 INSERT INTO Status_Sched (statName)
 VALUE ("Complete");

 INSERT INTO Appointment (patient_id, status_id, aDate, aTime, dentServ)
 VALUES (1, 1, "2024-09-24", "10:30", "Oral Prophylaxis");

SELECT * FROM Patient_Info;
Select * FROM Status_Sched;
Select * from Appointment;
