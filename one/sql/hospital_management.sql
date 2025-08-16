create database Hospital_Management_system;
use Hospital_Management_system;

-- 1st table
create table patients
	(patient_id int AUTO_INCREMENT primary key,
    FullName varchar(100) not null,
    DOB date,
    Gender enum ('Male','Female','Other') not null,
    phone_number varchar(20),
    email varchar(100),
    address varchar(220),
    registration_date date default(current_date)
);
INSERT INTO Patients (FullName,dob,gender,phone_number,email,address,registration_date) VALUES
('Amit Verma','1988-04-12','Male','+91-9810000001','amit.verma@example.com','Jaipur, Rajasthan','2024-07-10'),
('Sneha Kapoor','1994-09-20','Female',NULL,'sneha.kapoor@example.com','Jodhpur, Rajasthan','2025-02-15'),
('Ravi Kumar','2000-01-05','Male','+91-9810000003','ravi.kumar@example.com','Udaipur, Rajasthan','2023-11-01'),
('Priya Singh','1975-12-30','Female','   +91-9810000004   ','priya.singh@example.com','Ajmer, Rajasthan','2022-03-22'),
('Neha Sharma','1990-06-07','Female','+91-9810000005','neha.sharma@example.com','Bikaner, Rajasthan','2021-08-13'),
('Neha Kapoor', '1992-04-15', 'Female', '9812345671', 'neha.kapoor@email.com', 'Ajmer, Rajasthan', '2023-06-01'),
('Arjun Yadav', '1988-09-30', 'Male', '9823456782', 'arjun.yadav@email.com', 'Alwar, Rajasthan', '2023-06-10'),
('Meera Joshi', '1975-12-20', 'Female', '9834567893', 'meera.joshi@email.com', 'Bhilwara, Rajasthan', '2023-06-18'),
('Rahul Khanna', '1998-07-09', 'Male', '9845678904', 'rahul.khanna@email.com', 'Sikar, Rajasthan', '2023-07-05'),
('Pooja Bansal', '1994-11-25', 'Female', '9856789015', 'pooja.bansal@email.com', 'Chittorgarh, Rajasthan', '2023-07-12'),
('Suresh Rathi', '1980-03-17', 'Male', '9867890126', 'suresh.rathi@email.com', 'Barmer, Rajasthan', '2023-07-19'),
('Divya Sharma', '1999-08-03', 'Female', '9878901237', 'divya.sharma@email.com', 'Nagaur, Rajasthan', '2023-08-02'),
('Anil Chauhan', '1972-10-28', 'Male', '9889012348', 'anil.chauhan@email.com', 'Hanumangarh, Rajasthan', '2023-08-15'),
('Kavita Jain', '1986-01-11', 'Female', '9890123459', 'kavita.jain@email.com', 'Pali, Rajasthan', '2023-08-20'),
('Vikas Gupta', '1991-05-07', 'Male', '9901234560', 'vikas.gupta@email.com', 'Tonk, Rajasthan', '2023-09-01'),
('Ritika Agarwal', '1996-02-19', 'Female', '9912345671', 'ritika.agarwal@email.com', 'Bharatpur, Rajasthan', '2023-09-12'),
('Mohit Sharma', '1983-06-23', 'Male', '9923456782', 'mohit.sharma@email.com', 'Jhunjhunu, Rajasthan', '2023-09-25'),
('Shalini Saxena', '1997-09-14', 'Female', '9934567893', 'shalini.saxena@email.com', 'Jhalawar, Rajasthan', '2023-10-05'),
('Deepak Verma', '1979-11-09', 'Male', '9945678904', 'deepak.verma@email.com', 'Dausa, Rajasthan', '2023-10-20'),
('Aarti Soni', '1985-03-27', 'Female', '9956789015', 'aarti.soni@email.com', 'Rajsamand, Rajasthan', '2023-11-02'),
('Rohit Mishra', '1993-12-16', 'Male', '9967890126', 'rohit.mishra@email.com', 'Karauli, Rajasthan', '2023-11-18'),
('Swati Tiwari', '1990-01-30', 'Female', '9978901237', 'swati.tiwari@email.com', 'Dungarpur, Rajasthan', '2023-12-01'),
('Harish Meena', '1987-07-21', 'Male', '9989012348', 'harish.meena@email.com', 'Jalore, Rajasthan', '2023-12-15'),
('Ananya Sen', '1995-04-04', 'Female', '9990123459', 'ananya.sen@email.com', 'Pratapgarh, Rajasthan', '2024-01-05'),
('Kunal Rathore', '1982-08-13', 'Male', '9811223344', 'kunal.rathore@email.com', 'Sawai Madhopur, Rajasthan', '2024-01-20');


-- 2nd Doctors
CREATE TABLE Doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    phone_number varchar(20),
    email VARCHAR(100),
    available_days VARCHAR(100), 
    consultation_fee DECIMAL(10,2) DEFAULT 0.00,
    years_experience INT DEFAULT 0
);
INSERT INTO Doctors (name, specialization, phone_number, email, available_days, consultation_fee, years_experience) VALUES
('Dr. Aarav Sharma', 'Cardiology', '9876543101', 'aarav.sharma@hospital.com', 'Mon,Wed,Fri', 800, 12),
('Dr. Meera Iyer', 'Neurology', '9876543102', 'meera.iyer@hospital.com', 'Tue,Thu,Sat', 950, 18),
('Dr. Rohan Malhotra', 'Dermatology', '9876543103', 'rohan.malhotra@hospital.com', 'Mon,Tue,Fri', 600, 7),
('Dr. Priya Nair', 'Orthopedics', '9876543104', 'priya.nair@hospital.com', 'Wed,Fri,Sat', 850, 14),
('Dr. Karan Singh', 'General Medicine', '9876543105', 'karan.singh@hospital.com', 'Mon,Thu,Sat', 500, 5),
('Dr. Nisha Gupta', 'Dentist', '9876543106', 'nisha.gupta@hospital.com', 'Tue,Thu,Fri', 400, 9),
('Dr. Aditya Menon', 'Cardiology', '9876543107', 'aditya.menon@hospital.com', 'Mon,Wed,Fri', 1200, 20),
('Dr. Kavya Rao', 'Neurology', '9876543108', 'kavya.rao@hospital.com', 'Tue,Thu,Sat', 1000, 11),
('Dr. Vivek Joshi', 'Dermatology', '9876543109', 'vivek.joshi@hospital.com', 'Mon,Wed,Fri', 700, 8),
('Dr. Sneha Pillai', 'Orthopedics', '9876543110', 'sneha.pillai@hospital.com', 'Tue,Fri,Sat', 950, 16),
('Dr. Manish Kapoor', 'General Medicine', '9876543111', 'manish.kapoor@hospital.com', 'Mon,Thu,Sat', 550, 6),
('Dr. Ananya Deshmukh', 'Dentist', '9876543112', 'ananya.deshmukh@hospital.com', 'Tue,Thu,Fri', 450, 10),
('Dr. Rajeev Sinha', 'Cardiology', '9876543113', 'rajeev.sinha@hospital.com', 'Mon,Wed,Fri', 1100, 22),
('Dr. Deepa Reddy', 'Neurology', '9876543114', 'deepa.reddy@hospital.com', 'Tue,Thu,Sat', 1050, 13),
('Dr. Saurabh Bhatia', 'Dermatology', '9876543115', 'saurabh.bhatia@hospital.com', 'Mon,Tue,Fri', 650, 4),
('Dr. Tanvi Chawla', 'Orthopedics', '9876543116', 'tanvi.chawla@hospital.com', 'Wed,Fri,Sat', 880, 15),
('Dr. Akash Verma', 'General Medicine', '9876543117', 'akash.verma@hospital.com', 'Mon,Thu,Sat', 520, 3),
('Dr. Ritu Kohli', 'Dentist', '9876543118', 'ritu.kohli@hospital.com', 'Tue,Thu,Fri', 480, 12),
('Dr. Harsh Mehta', 'Cardiology', '9876543119', 'harsh.mehta@hospital.com', 'Mon,Wed,Fri', 950, 9),
('Dr. Pooja Saxena', 'Neurology', '9876543120', 'pooja.saxena@hospital.com', 'Tue,Thu,Sat', 990, 17);


-- 3rd Departments
CREATE TABLE Departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) UNIQUE NOT NULL
);

INSERT INTO Departments (department_name) VALUES
	('Cardiology'), 
	('Neurology'), 
	('Dermatology'), 
	('Orthopedics'), 
	('General Medicine'),
    ('Dentist');

-- 4th Doctor_Department (Mapping)
CREATE TABLE Doctor_Department (
    doctor_id INT,
    department_id INT,
    PRIMARY KEY (doctor_id, department_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id) ON DELETE CASCADE,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id) ON DELETE CASCADE
);
INSERT INTO Doctor_Department (doctor_id, department_id) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,1),
(8,2),
(9,3),
(10,4),
(11,5),
(12,6),
(13,1),
(14,2),
(15,3),
(16,4),
(17,5),
(18,6),
(19,1),
(20,2);


-- 5th Appointments
CREATE TABLE Appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATETIME,
    status ENUM('Scheduled','Completed','Cancelled') DEFAULT 'Scheduled',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id) ON DELETE CASCADE,
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id) ON DELETE CASCADE
);
INSERT INTO Appointments (patient_id, doctor_id, appointment_date, status) VALUES
(1,1,'2025-07-12 10:00:00','Completed'),
(2,3,'2025-06-15 11:30:00','Completed'),
(3,1,'2024-12-05 09:00:00','Cancelled'),
(4,2,'2024-08-20 14:00:00','Scheduled'),
(5,5,'2023-09-10 16:00:00','Completed'),
(4,3,'2024-10-05 22:30:00','Scheduled'),
(1,2,'2025-01-05 10:30:00','Completed'),
(6,4,'2025-07-20 09:30:00','Scheduled'),
(7,2,'2025-06-28 15:00:00','Completed'),
(8,5,'2025-05-12 11:00:00','Cancelled'),
(9,3,'2024-11-10 14:30:00','Completed'),
(10,1,'2025-01-25 16:00:00','Scheduled'),
(11,4,'2025-02-14 10:30:00','Completed'),
(12,2,'2024-09-05 12:00:00','Cancelled'),
(13,5,'2025-08-02 09:00:00','Scheduled'),
(14,1,'2023-11-19 13:30:00','Completed'),
(15,3,'2025-04-08 17:00:00','Scheduled'),
(16,2,'2025-06-18 10:15:00','Completed'),
(17,4,'2024-10-22 15:45:00','Cancelled'),
(18,5,'2025-07-29 09:00:00','Scheduled'),
(19,1,'2024-12-12 11:30:00','Completed'),
(20,3,'2025-05-30 14:00:00','Scheduled'),
(21,2,'2025-03-07 16:15:00','Completed'),
(22,4,'2025-08-01 10:45:00','Scheduled'),
(23,5,'2025-01-10 09:30:00','Completed'),
(24,1,'2025-02-22 13:00:00','Cancelled');

-- 6th Medical (medical records)
CREATE TABLE Medical (
    record_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    diagnosis VARCHAR(255),
    prescription TEXT,
    treatment_date DATE,
    admission_date DATE NULL,
    discharge_date DATE NULL,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id) ON DELETE CASCADE,
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id) ON DELETE SET NULL
);
INSERT INTO Medical (patient_id, doctor_id, diagnosis, prescription, treatment_date, admission_date, discharge_date) VALUES
(1,1,'Hypertension','Med A: 1 tab daily','2025-07-12','2025-07-12','2025-07-13'),
(1,2,'Migraine','Med C','2025-01-05',NULL,NULL),
(1,1,'Routine Check-up','Blood pressure monitoring','2025-08-01',NULL,NULL),
(2,3,'Acne','Topical gel','2025-06-15',NULL,NULL),
(2,1,'Chest Pain','ECG + Med D','2025-02-14','2025-02-14','2025-02-15'),
(2,3,'Skin Allergy','Antihistamine','2024-10-10',NULL,NULL),
(5,5,'Flu','Rest + Med B','2023-09-10',NULL,NULL),
(1,2,'Migraine','Med C','2025-01-05',NULL,NULL),
(3,4,'Follow-up: Fracture Healing','Physiotherapy','2025-01-10',NULL,NULL),
(3,2,'Headache','Neurological check-up','2025-03-22',NULL,NULL),
(3,4,'Fracture (Leg)','Cast + Painkillers','2024-11-20','2024-11-20','2024-12-10'),
(4,6,'Toothache','Pain relief + Dental cleaning','2025-03-03',NULL,NULL),
(2,1,'Chest Pain','ECG + Med D','2025-02-14','2025-02-14','2025-02-15'),
(6,2,'Epilepsy','Anti-seizure Med E','2024-08-22','2024-08-22','2024-08-29'),
(6,2,'Follow-up: Epilepsy','Dosage adjustment','2024-10-05',NULL,NULL),
(6,1,'Heart Palpitations','Med G','2025-03-29',NULL,NULL),
(7,5,'Stomach Ache','Antacid','2025-06-12',NULL,NULL),
(7,5,'Routine Check-up','Vitamin supplements','2025-07-20',NULL,NULL),
(7,5,'Viral Fever','Paracetamol + Rest','2025-04-01',NULL,NULL),
(8,4,'Knee Pain','Physiotherapy + Med F','2025-05-18',NULL,NULL),
(8,4,'Sprain (Ankle)','Bandage + Rest','2025-07-10',NULL,NULL),
(8,4,'Back Pain','Muscle relaxant','2024-11-25',NULL,NULL);


-- 7th Billing
CREATE TABLE Billing (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    appointment_id INT,
    amount DECIMAL(12,2) DEFAULT 0.00,
    payment_status ENUM('Paid','Pending','Cancelled') DEFAULT 'Pending',
    payment_date DATE NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id) ON DELETE CASCADE,
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id) ON DELETE SET NULL
);
INSERT INTO Billing (patient_id, appointment_id, amount, payment_status, payment_date) VALUES
(1,1,1500.00,'Paid','2025-07-12'),
(2,2,800.00,'Paid','2025-06-15'),
(3,3,0.00,'Cancelled',NULL),
(5,5,500.00,'Paid','2023-09-10'),
(1,6,1200.00,'Pending',NULL),
(4,4,1000.00,'Paid','2025-03-20'),
(6,7,700.00,'Paid','2025-04-10'),
(7,8,650.00,'Pending',NULL),
(8,9,2000.00,'Paid','2025-02-05'),
(9,10,900.00,'Paid','2024-12-22'),
(10,11,0.00,'Cancelled',NULL),
(11,12,1100.00,'Paid','2025-01-15'),
(12,13,750.00,'Pending',NULL),
(13,14,1300.00,'Paid','2025-07-01'),
(14,15,600.00,'Paid','2025-05-18'),
(15,16,1800.00,'Pending',NULL);

-- Tasks & Functionalities
-- 1. Crud Operations
-- 1.1 insert new patient, doctors, and appointments 
insert into patients (FullName,dob,gender,phone_number,email,address,registration_date)value
('kiara Shah', '2006-04-05', 'Female','+91-9000000080', 'kiara.shah@email.com','mumbai,maharastra','2024-05-15');

insert into doctors (name, specialization, phone_number, email, available_days, consultation_fee, years_experience) VALUES
('Dr. Yashvi Mali','Neurology',90000000050,'yashvi.mali@hospital.com','Mon,tue,sat',2100.00,5);

insert into appointments (patient_id, doctor_id, appointment_date, status) VALUES
(6,6,'2025-07-12 10:00:00','Scheduled');

-- 1.2 update patient
update patients
set address = 'Udaipur, Rajasthan'
where patient_id = 5;

-- 1.3 delete cancelled appointment older than 6 months
SET SQL_SAFE_UPDATES = 0;
delete from appointments 
where status ='cancelled'
and appointment_date <(curdate()- interval 6 month); 

-- 2. use sql clauses (where, having, limit)
-- 2.1 Find all patients registered in the last year. 
SELECT patient_id, FullName, registration_date, email
FROM patients 
WHERE registration_date >= CURDATE() - INTERVAL 1 YEAR;

-- 2.2 Get the top 5 highest paying patients.
select p.patient_id, p.FullName, sum(b.amount) as total_amount
from patients p
join billing b on p.patient_id = b.patient_id
group by p.patient_id, p.FullName 
order by total_amount desc
limit 5;

-- 2.3 Retrive doctor who charge more than ₹1,000.
select doctor_id, name, specialization, consultation_fee
from doctors
where consultation_fee > 1000
order by consultation_fee desc;

-- 3 Apply sql clauses(and, or, not)
-- 3.1 Find appointments where status = 'Scheduled' and doctor_id = 3.
select p.patient_id, p.Fullname, a.appointment_id, a.appointment_date, a.status
from patients p
inner join appointments a on p.patient_id = a.patient_id
where status = 'Scheduled'
and doctor_id=3;

-- 3.2 Retrieve doctors who specialize in Cardiology OR Neurology.
select * from doctors
where specialization ='Cardiology' or 
specialization='Neurology';

-- 3.3 Get patients who have NOT visited in the past year.
SELECT p.patient_id, p.FullName
FROM patients p
WHERE p.patient_id NOT IN (
    SELECT a.patient_id
    FROM appointments a
    WHERE a.appointment_date >= CURDATE() - INTERVAL 1 YEAR
);

-- 4. Sorting & Grouping Data (Order by, group by)
-- 4.1 List all doctors sorted by specialization.
select doctor_id, name, specialization from doctors
order by specialization asc;

-- 4.2 Display the number of patients assigned to each doctor.
SELECT 
    d.doctor_id,
    d.name AS doctor_name,
    COUNT(DISTINCT p.patient_id) AS total_patients
FROM doctors d
LEFT JOIN appointments a 
    ON d.doctor_id = a.doctor_id
LEFT JOIN patients p 
    ON a.patient_id = p.patient_id
GROUP BY d.doctor_id, d.name
ORDER BY total_patients DESC;

-- 4.3 Show total revenue generated per department
SELECT  
    d.specialization AS department,  
    SUM(b.amount) AS total_revenue  
FROM doctors d  
JOIN appointments a  
    ON d.doctor_id = a.doctor_id  
JOIN billing b   
    ON a.appointment_id = b.appointment_id  
GROUP BY d.specialization  
ORDER BY total_revenue DESC;

-- 5 Use Aggregate Function(SUM, AVG, MAX, MIN, COUNT) 
-- 5.1 Find the total revenue collected
select sum(amount) as total_revenue from billing;

-- 5.2 Identify the most visited doctor.
select 	d.doctor_id, 
		d.name, 
        d.specialization, 
        count(a.appointment_id) as visit_count
from doctors d
join appointments a 
	on d.doctor_id = a.doctor_id
group by d.doctor_id, d.name, d.specialization
order by visit_count desc
limit 1;

-- 5.3 Calculate the average consultation fee
select avg(consultation_fee) as avg_fee 
	from doctors;

-- 6 Establish Primary & Foreign Key Relationships
-- 6.1 Ensure medical records are linked to correct patient and doctors.
ALTER TABLE medical
ADD CONSTRAINT fk_medical_patient
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
ADD CONSTRAINT fk_medical_doctor
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id);
    
-- checking 
SELECT m.record_id, p.FullName AS patient_name, d.name AS doctor_name, m.diagnosis
FROM Medical m
JOIN Patients p ON m.patient_id = p.patient_id
LEFT JOIN Doctors d ON m.doctor_id = d.doctor_id;

-- 6.2 Establish relationships between invoices and appointments.
ALTER TABLE Billing
ADD CONSTRAINT fk_billing_appointment
FOREIGN KEY (appointment_id)
REFERENCES Appointments(appointment_id)
ON DELETE SET NULL
ON UPDATE CASCADE;

-- 7 Implements Joins
-- 7.1 Retrive a list of doctors along with their department names using inner join.
select d.name, dd.department_id, dep.department_name
	from doctors d
inner join doctor_department dd
	on d.doctor_id = dd.doctor_id
inner join departments dep
	on dd.department_id = dep.department_id;

-- 7.2 Get all patient who have completed appointment using left join.
select p.patient_id, p.FullName, a.appointment_date, a.status
	from patients p
left join appointments a
	on p.patient_id = a.patient_id
where status='completed';

-- 7.3 Find appointments that have no payments using Right Join.
 select b.invoice_id,
		a.appointment_id, 
		a.patient_id, 
        a.appointment_date
	from billing b
right join appointments a
	on a.patient_id = b.appointment_id
where b.invoice_id is null;

-- 7.4 Show patients who have never booker an appointment using Full Outer Join.
select 	a.appointment_id,
		p.patient_id, 
		p.FullName
	from patients p 
left join appointments a
	on p.patient_id = a.patient_id
where a.appointment_id is null
	union 
select 	a.appointment_id,
		p.patient_id, 
		p.FullName
	from patients p 
right join appointments a
	on p.patient_id = a.patient_id
where a.appointment_id is null;

-- 8 Use Subqueries
-- 8.1 Find doctors who have handled more than 50 patients.
select doctor_id, name 
	from doctors
where doctor_id 
	in (
		select doctor_id 
		from appointments
		group by doctor_id
		having count(distinct patient_id) > 50
		);
	
-- 8.2 Identify the patient who has spent the most on treatments.
select p.patient_id, p.FullName, b.total_amount
from patients p
join (
    select patient_id, SUM(amount) AS total_amount
    from billing
    group by patient_id
) b on p.patient_id = b.patient_id
where b.total_amount = (
    select SUM(amount)
    from billing
    group by patient_id
    order by SUM(amount) desc
    limit 1
);

-- 8.3 Get appointments where the doctors specializes in Dermatology.
select  a.appointment_id,
		a.appointment_date,
        p.FullName as Patient_Name,
		a.doctor_id, 
        d.name as Doctor_Name, 
        d.specialization
	from appointments a
join doctors d 
	on a.doctor_id = d.doctor_id
join patients p 
	on a.patient_id = p.patient_id
where d.specialization = 'Dermatology';

-- 9 Implement Date & Time Function 
-- 9.1 Extract the month from appointment_date to count visits per month.
select  monthname(appointment_date) as month_name, 
		count(*) as total_appointments
from appointments
group by monthname(appointment_date)
order by min(appointment_date);

-- 9.2 Calculate the total hospital stay duration
 select p.patient_id, p.FullName,m.admission_date, m.discharge_date, 
		datediff(m.discharge_date, m.admission_date) as stay_duration
	from medical m
left join patients p on m.patient_id = p.patient_id;

-- 9.3 formate treatment_date as DD-MM-YYYY.
select p.patient_id, p.FullName, date_format(m.treatment_date, '%d-%m-%Y') as formatted_treatment_date
	from medical m
join patients p 
	on m.patient_id = p.patient_id;

-- 10 Use String Manipulation Functions 
-- 10.1 Convert all patient names to uppercase.alter
select patient_id, upper(FullName) as uppercase_name 
	from patients;

-- 10.2 Trim whitespace from doctor names.
select doctor_id, trim(name) as trimmed_name
	from doctors;
-- 10.3 Replace missing phone numbers with "Not Available"
SELECT  patient_id AS id, 
		FullName AS name, 
        IFNULL(phone_number, 'Not Available') AS phone_number, 'Patient' AS type
FROM patients
UNION ALL
SELECT doctor_id AS id, name, IFNULL(phone_number, 'Not Available') AS phone_number, 'Doctor' AS type
FROM doctors;

-- 11 Implement Window Function
-- 11.1 Rank doctors based on the number of patient they have treated.
SELECT 
    d.doctor_id, 
    d.name AS doctor_name,
    COUNT(DISTINCT a.patient_id) AS patient_count,
    rank() OVER (ORDER BY COUNT(DISTINCT a.patient_id) DESC) AS rank_by_patients
FROM 
    doctors d
JOIN 
    appointments a 
    ON d.doctor_id = a.doctor_id
GROUP BY 
    d.doctor_id, d.name
ORDER BY 
    rank_by_patients;

    
--  11.2 Show the cumulative revenue per month.
SELECT  
    MONTHNAME(a.appointment_date) AS month, 
    SUM(b.amount) AS monthly_revenue,
    SUM(SUM(b.amount)) OVER (ORDER BY MONTH(a.appointment_date)) AS cumulative_revenue
FROM 
    billing b
JOIN 
    appointments a 
    ON b.appointment_id = a.appointment_id
GROUP BY
    MONTH(a.appointment_date), MONTHNAME(a.appointment_date)
ORDER BY
    MONTH(a.appointment_date);

    
-- 11.3 Display the running total of appointments made
select a.appointment_id, a.patient_id, p.FullName,
		count(*) over(order by a.appointment_id) as RunningTotal
	from appointments a
join patients p on a.patient_id = p.patient_id;

-- 12 Apply SQL Case Expressions 
-- 12.1 Assign a Patient_Risk_Level:
	-- "High" if they have more than 5 medical records.
    -- "Medium" if they have 3-5 records.
    -- "Low" otherwise.
select  m.patient_id, 
		p.FullName,
        count(m.record_id) as record_count,
        case
			when count(m.record_id) > 5 then 'high'
            when count(m.record_id) between 3 and 5 then 'medium'
            else 'low'
		end as Patient_Risk_Level
	from patients p
left join 
	medical m on p.patient_id = m.patient_id
group by 
	p.patient_id, p.FullName
order by record_count desc;

-- 12.2 Categorize doctors:
	-- "Senior" if they have more than 15 years of experience.
    -- "Mid-Level" if they have 5-15 years.
    -- "Junior" otherwise.

select  doctor_id,
		name, 
        consultation_fee, 
        years_experience,
        case
			when years_experience > 15 then 'Senior'
            when years_experience between 5 and 15 then 'Mid-Level'
            else 'Junior'
		end as doctor_level
from doctors
order by years_experience desc;