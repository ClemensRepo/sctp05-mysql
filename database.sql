CREATE database pet_clinic;

use pet_clinic;

CREATE TABLE Pet_owners  (
    pet_owner_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    fname VARCHAR(30) NOT NULL,
    LNAME VARCHAR(30) NOT NULL,
    email VARFCHAR(50) NOT NULL
) engine = innodb;

CREATE TABLE Medicine {
    medicine_id INT UNSIGNED PRIMARY KEY AUTO0_INCREMENT,
    name VARCHAR(50), NOT NULL,
    description VARCHAR(255)
} engine = innodb;

CREATE TABLE Vets {
    vet_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    fname VARCHAR(30), NOT NULL,
    lname VARCHAR(30), NOT NULL,
    office_number VARCHAR(20)
} engine = innodb;

CREATE TABLE Prescription {
    prescription_id INT UNSIGNED PRIMARY KEY,
} engine = innodb;

CREATE TABLE Treatments {
    treatment_id INT UNSIGNED PRIMARY KEY,
    dosage FLOAT,
    unit VARCHAR(10),
    qty INT UNSIGNED
} engine = innodb;


CREATE TABLE Diagnosis {
    diagnosis_id INT UNSIGNED PRIMARY KEY,
    doctor_notes VARCHAR(1000);
} engine = innodb;

CREATE TABLE Appointments {
    appointment_id INT UNSIGNED PRIMARY KEY,
    datetime DATE
} engine = innodb;

CREATE TABLE shifts {
    shift_id INT UNSIGNED PRIMARY KEY,
    start_time TIME,
    end_time TIME,
} engine = innodb;

ALTER TABLE Prescriptions ADD COLUMN medicine_id INT UNSIGNED;
ALTER TABLE Prescriptions ADD CONSTRAINTS fk_medicine_prescription FOREIGN KEY medicine_id REFERENCES medicine(medicine_id);