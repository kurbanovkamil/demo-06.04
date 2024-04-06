CREATE TABLE Patients (
    patient_idSERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    patronymic VARCHAR(50),
    passport_series VARCHAR(10) NOT NULL,
    passport_number VARCHAR(10) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender VARCHAR(10) NOT NULL,
    address VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    email VARCHAR(50) UNIQUE,
    medical_card_number VARCHAR(20) UNIQUE,
    date_of_issue_medical_card DATE NOT NULL,
    last_visit_date DATE,
    next_visit_date DATE,
    insurance_policy_number VARCHAR(20) UNIQUE,
    insurance_policy_expiry_date DATE
);
INSERT INTO Patients (first_name, last_name, patronymic, passport_series, passport_number, date_of_birth, gender, address, phone_number, email, medical_card_number, date_of_issue_medical_card, last_visit_date, next_visit_date, insurance_policy_number, insurance_policy_expiry_date) VALUES

CREATE TABLE Doctors (
    doctor_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    patronymic VARCHAR(50),
    specialty VARCHAR(50) NOT NULL,
    qualification VARCHAR(50),
    work_experience INT NOT NULL,
    office_number VARCHAR(10) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    email VARCHAR(50) UNIQUE
);
INSERT INTO Doctors (first_name, last_name, patronymic, specialty, qualification, work_experience, office_number, phone_number, email) VALUES
CREATE TABLE Appointments (
    appointment_id SERIAL PRIMARY KEY,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    appointment_date DATE NOT NULL,
    appointment_time TIME NOT NULL,
    complaint TEXT,
    diagnosis TEXT,
    treatment TEXT,
    FOREIGN KEY (patient_id) REFERENCES Patients (patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors (doctor_id)
);
INSERT INTO Appointments (patient_id, doctor_id, appointment_date, appointment_time, complaint, diagnosis, treatment) VALUES

CREATE TABLE MedicalRecords (
    medical_record_id SERIAL PRIMARY KEY,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    visit_date DATE NOT NULL,
    anamnesis TEXT,
    examination_results TEXT,
    recommendations TEXT,
    FOREIGN KEY (patient_id) REFERENCES Patients (patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors (doctor_id)
);
INSERT INTO MedicalRecords (patient_id, doctor_id, visit_date, anamnesis, examination_results, recommendations) VALUES