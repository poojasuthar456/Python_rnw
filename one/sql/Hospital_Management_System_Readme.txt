Hospital Management System Database

This project is a relational database design for a Hospital Management
System.
It includes tables for managing patients, doctors, departments,
appointments, billing, and more.

------------------------------------------------------------------------

Database Schema

1. Patients Table

Stores information about patients.

    CREATE TABLE Patients (
        patient_id INT PRIMARY KEY,
        first_name VARCHAR(50),
        last_name VARCHAR(50),
        dob DATE,
        gender VARCHAR(10),
        phone VARCHAR(15),
        address VARCHAR(255)
    );

2. Doctors Table

Stores information about doctors.

    CREATE TABLE Doctors (
        doctor_id INT PRIMARY KEY,
        first_name VARCHAR(50),
        last_name VARCHAR(50),
        specialization VARCHAR(100),
        phone VARCHAR(15),
        email VARCHAR(100)
    );

3. Departments Table

Stores hospital departments.

    CREATE TABLE Departments (
        department_id INT PRIMARY KEY,
        department_name VARCHAR(100)
    );

4. Doctor_Department Table

Junction table that links doctors to their departments.

    CREATE TABLE Doctor_Department (
        doctor_id INT,
        department_id INT,
        PRIMARY KEY (doctor_id, department_id),
        FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id) ON DELETE CASCADE,
        FOREIGN KEY (department_id) REFERENCES Departments(department_id) ON DELETE CASCADE
    );

5. Appointments Table

Stores appointment details.

    CREATE TABLE Appointments (
        appointment_id INT PRIMARY KEY,
        patient_id INT,
        doctor_id INT,
        appointment_date DATE,
        status VARCHAR(20),
        FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
        FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
    );

6. Billing Table

Stores billing information.

    CREATE TABLE Billing (
        bill_id INT PRIMARY KEY,
        patient_id INT,
        amount DECIMAL(10,2),
        bill_date DATE,
        status VARCHAR(20),
        FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
    );

------------------------------------------------------------------------

Explanation

-   Patients: Contains all patient details (basic demographics and
    contact info).
-   Doctors: Contains all doctors with their specialization.
-   Departments: Contains hospital departments such as Cardiology,
    Neurology, etc.
-   Doctor_Department: Connects doctors to departments (many-to-many
    relationship).
-   Appointments: Links patients with doctors for scheduled visits.
-   Billing: Manages invoices and payments for patient services.

------------------------------------------------------------------------

Relationships

1.  One patient can have multiple appointments.
2.  One doctor can belong to multiple departments.
3.  Each appointment links one patient to one doctor.
4.  Billing is associated with patients.

------------------------------------------------------------------------

This schema can be extended to include medical records, prescriptions,
nurses, and staff management as needed.
