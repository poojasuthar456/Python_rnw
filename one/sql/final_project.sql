create database final_project;
use final_project;
#Create a 1st_table
create table Student_table
	(StudentID int primary key, 
    FirstName Varchar(20),
    LastName Varchar(20),
    Email Varchar(50),
    Birth_Date date,
    EnrollmentDate date );

insert into Student_table values
	(1001, 'Aarav', 'Sharma', 'aarav.sharma1@email.com', '2001-05-12', '2023-07-01'),
	(1002, 'Isha', 'Verma', 'isha.verma2@email.com', '2002-08-25', '2023-06-17'),
	(1003, 'Karan', 'Mehta', 'karan.mehta3@email.com', '2000-11-03', '2022-09-05'),
	(1004, 'Neha', 'Patel', 'neha.patel4@email.com', '2001-02-14', '2023-01-20'),
	(1005, 'Rohan', 'Singh', 'rohan.singh5@email.com', '2003-07-19', '2022-12-11'),
	(1006, 'Priya', 'Jain', 'priya.jain6@email.com', '2002-09-30', '2023-05-09'),
	(1007, 'Aditya', 'Kapoor', 'aditya.kapoor7@email.com', '2001-03-22', '2023-03-28'),
	(1008, 'Anjali', 'Rao', 'anjali.rao8@email.com', '2000-06-15', '2022-10-13'),
	(1009, 'Rahul', 'Saxena', 'rahul.saxena9@email.com', '2002-01-07', '2023-02-25'),
	(1010, 'Sneha', 'Chopra', 'sneha.chopra10@email.com', '2003-04-18', '2022-11-06'),
	(1011, 'Varun', 'Malik', 'varun.malik11@email.com', '2000-10-08', '2022-08-15'),
	(1012, 'Meera', 'Nair', 'meera.nair12@email.com', '2001-12-19', '2023-04-22'),
	(1013, 'Aryan', 'Chauhan', 'aryan.chauhan13@email.com', '2002-05-03', '2022-09-30'),
	(1014, 'Shivani', 'Menon', 'shivani.menon14@email.com', '2003-02-27', '2023-03-17'),
	(1015, 'Kabir', 'Dutta', 'kabir.dutta15@email.com', '2001-09-14', '2023-01-05'),
	(1016, 'Naina', 'Khanna', 'naina.khanna16@email.com', '2000-07-21', '2022-12-10'),
	(1017, 'Vihaan', 'Seth', 'vihaan.seth17@email.com', '2002-11-11', '2023-05-18'),
	(1018, 'Ishita', 'Bose', 'ishita.bose18@email.com', '2001-04-05', '2023-02-14'),
	(1019, 'Dhruv', 'Naidu', 'dhruv.naidu19@email.com', '2003-08-29', '2022-10-07'),
	(1020, 'Tanya', 'Rana', 'tanya.rana20@email.com', '2000-12-31', '2023-06-28'),
	(1021, 'Rishi', 'Iyer', 'rishi.iyer21@email.com', '2001-06-13', '2023-04-11'),
	(1022, 'Anika', 'Chawla', 'anika.chawla22@email.com', '2002-03-28', '2022-11-15'),
	(1023, 'Kunal', 'Banerjee', 'kunal.banerjee23@email.com', '2000-09-07', '2023-01-23'),
	(1024, 'Mira', 'Goswami', 'mira.goswami24@email.com', '2003-05-16', '2022-10-30'),
	(1025, 'Arnav', 'Srinivasan', 'arnav.srinivasan25@email.com', '2001-12-09', '2023-03-05'),
	(1026, 'Zara', 'Chakraborty', 'zara.chakraborty26@email.com', '2002-08-22', '2022-12-19'),
	(1027, 'Reyansh', 'Ahuja', 'reyansh.ahuja27@email.com', '2000-11-30', '2023-05-14'),
	(1028, 'Kiara', 'Venkatesh', 'kiara.venkatesh28@email.com', '2003-01-25', '2023-02-08'),
	(1029, 'Shaurya', 'Grover', 'shaurya.grover29@email.com', '2001-04-18', '2022-09-12'),
	(1030, 'Myra', 'Chatterjee', 'myra.chatterjee30@email.com', '2002-07-03', '2023-06-07'),
	(1031, 'Atharv', 'Bakshi', 'atharv.bakshi31@email.com', '2000-10-14', '2022-08-25'),
	(1032, 'Avni', 'Ranganathan', 'avni.ranganathan32@email.com', '2003-02-27', '2023-01-17'),
	(1033, 'Vedant', 'Chandra', 'vedant.chandra33@email.com', '2001-05-09', '2023-04-03'),
	(1034, 'Trisha', 'Ghosh', 'trisha.ghosh34@email.com', '2002-09-21', '2022-11-28'),
	(1035, 'Ayaan', 'Sengupta', 'ayaan.sengupta35@email.com', '2000-12-05', '2023-03-19'),
	(1036, 'Amaira', 'Kulkarni', 'amaira.kulkarni36@email.com', '2003-06-30', '2022-10-11'),
	(1037, 'Advait', 'Rastogi', 'advait.rastogi37@email.com', '2001-08-12', '2023-05-26'),
	(1038, 'Disha', 'Bhatia', 'disha.bhatia38@email.com', '2002-01-24', '2023-02-14'),
	(1039, 'Shiv', 'Basu', 'shiv.basu39@email.com', '2000-04-17', '2022-09-08'),
	(1040, 'Anvi', 'Agarwal', 'anvi.agarwal40@email.com', '2003-07-22', '2023-06-30'),
	(1041, 'Ishaan', 'Kapoor', 'ishaan.kapoor41@email.com', '2001-03-15', '2023-01-09'),
	(1042, 'Kyra', 'Luthra', 'kyra.luthra42@email.com', '2002-11-08', '2022-12-22'),
	(1043, 'Ranveer', 'Chaudhry', 'ranveer.chaudhry43@email.com', '2000-05-29', '2023-04-18'),
	(1044, 'Tara', 'Khanna', 'tara.khanna44@email.com', '2003-09-12', '2022-10-05'),
	(1045, 'Aadi', 'Dhawan', 'aadi.dhawan45@email.com', '2001-02-03', '2023-03-27'),
	(1046, 'Siya', 'Ganguly', 'siya.ganguly46@email.com', '2002-06-26', '2023-05-11'),
	(1047, 'Vivaan', 'Sood', 'vivaan.sood47@email.com', '2000-08-19', '2022-11-30'),
	(1048, 'Pari', 'Hooda', 'pari.hooda48@email.com', '2003-01-14', '2023-02-23'),
	(1049, 'Yuvaan', 'Bajpai', 'yuvaan.bajpai49@email.com', '2001-07-07', '2022-09-25'),
	(1050, 'Rhea', 'Gole', 'rhea.gole50@email.com', '2002-04-20', '2023-06-14'),
    (1051, 'Aarush', 'Chakraborty', 'aarush.chakraborty51@email.com', '2000-11-09', '2023-04-25'),
	(1052, 'Ishani', 'Dhar', 'ishani.dhar52@email.com', '2002-02-14', '2022-12-03'),
	(1053, 'Vihaan', 'Ganguly', 'vihaan.ganguly53@email.com', '2001-08-27', '2023-01-16'),
	(1054, 'Anvi', 'Sarkar', 'anvi.sarkar54@email.com', '2003-06-18', '2022-10-09'),
	(1055, 'Krish', 'Bose', 'krish.bose55@email.com', '2001-01-05', '2023-03-22'),
	(1056, 'Maya', 'Chawla', 'maya.chawla56@email.com', '2002-09-30', '2023-05-08'),
	(1057, 'Reyansh', 'Agarwal', 'reyansh.agarwal57@email.com', '2000-07-12', '2022-11-27'),
	(1058, 'Kyra', 'Banerjee', 'kyra.banerjee58@email.com', '2003-03-25', '2023-02-14'),
	(1059, 'Arjun', 'Menon', 'arjun.menon59@email.com', '2001-10-08', '2022-09-19'),
	(1060, 'Tara', 'Kapoor', 'tara.kapoor60@email.com', '2002-04-21', '2023-06-30'),
	(1061, 'Advait', 'Sengupta', 'advait.sengupta61@email.com', '2000-12-17', '2023-04-11'),
	(1062, 'Zoya', 'Ranganathan', 'zoya.ranganathan62@email.com', '2003-05-28', '2022-12-22'),
	(1063, 'Shaurya', 'Basu', 'shaurya.basu63@email.com', '2001-02-09', '2023-01-05'),
	(1064, 'Anika', 'Ghosh', 'anika.ghosh64@email.com', '2002-08-03', '2022-10-18'),
	(1065, 'Vedant', 'Kulkarni', 'vedant.kulkarni65@email.com', '2000-09-16', '2023-03-29'),
	(1066, 'Myra', 'Rastogi', 'myra.rastogi66@email.com', '2003-01-29', '2023-05-12'),
	(1067, 'Atharv', 'Bhatia', 'atharv.bhatia67@email.com', '2001-06-12', '2022-11-25'),
	(1068, 'Kiara', 'Apte', 'kiara.apte68@email.com', '2002-03-05', '2023-02-08'),
	(1069, 'Rishabh', 'Solanki', 'rishabh.solanki69@email.com', '2000-10-18', '2022-09-15'),
	(1070, 'Navya', 'Mukhopadhyay', 'navya.mukhopadhyay70@email.com', '2003-07-21', '2023-06-24'),
	(1071, 'Ayaan', 'Chaudhry', 'ayaan.chaudhry71@email.com', '2001-04-04', '2023-04-17'),
	(1072, 'Pari', 'Khanna', 'pari.khanna72@email.com', '2002-11-27', '2022-12-10'),
	(1073, 'Kiaan', 'Dhawan', 'kiaan.dhawan73@email.com', '2000-08-10', '2023-01-23'),
	(1074, 'Avni', 'Goswami', 'avni.goswami74@email.com', '2003-02-23', '2022-10-06'),
	(1075, 'Yuvaan', 'Sood', 'yuvaan.sood75@email.com', '2001-09-16', '2023-03-19'),
	(1076, 'Rhea', 'Hooda', 'rhea.hooda76@email.com', '2002-05-29', '2023-05-02'),
	(1077, 'Ishaan', 'Bajpai', 'ishaan.bajpai77@email.com', '2000-12-12', '2022-11-15'),
	(1078, 'Anaya', 'Gole', 'anaya.gole78@email.com', '2003-08-25', '2023-02-28'),
	(1079, 'Vivaan', 'Sanyal', 'vivaan.sanyal79@email.com', '2001-03-08', '2022-09-21'),
	(1080, 'Misha', 'Rao', 'misha.rao80@email.com', '2002-10-01', '2023-06-13'),
	(1081, 'Arnav', 'Chauhan', 'arnav.chauhan81@email.com', '2000-05-14', '2023-04-26'),
	(1082, 'Siya', 'Bhakta', 'siya.bhakta82@email.com', '2003-01-27', '2022-12-09'),
	(1083, 'Ranveer', 'Apte', 'ranveer.apte83@email.com', '2001-08-10', '2023-01-14'),
	(1084, 'Tisha', 'Balakrishnan', 'tisha.balakrishnan84@email.com', '2002-04-03', '2022-10-17'),
	(1085, 'Aadi', 'Saxena', 'aadi.saxena85@email.com', '2000-11-16', '2023-03-30'),
	(1086, 'Kyra', 'Chokshi', 'kyra.chokshi86@email.com', '2003-06-29', '2023-05-11'),
	(1087, 'Ved', 'Iyer', 'ved.iyer87@email.com', '2001-01-12', '2022-11-24'),
	(1088, 'Anvi', 'Nair', 'anvi.nair88@email.com', '2002-08-05', '2023-02-07'),
	(1089, 'Shiv', 'Dutta', 'shiv.dutta89@email.com', '2000-03-18', '2022-09-12'),
	(1090, 'Ira', 'Venkatesh', 'ira.venkatesh90@email.com', '2003-10-21', '2023-06-25'),
	(1091, 'Kabir', 'Grover', 'kabir.grover91@email.com', '2001-05-04', '2023-04-18'),
	(1092, 'Zara', 'Chatterjee', 'zara.chatterjee92@email.com', '2002-12-27', '2022-12-01'),
	(1093, 'Rudra', 'Bakshi', 'rudra.bakshi93@email.com', '2000-09-10', '2023-01-16'),
	(1094, 'Trisha', 'Luthra', 'trisha.luthra94@email.com', '2003-03-23', '2022-10-05'),
	(1095, 'Aarav', 'Sengupta', 'aarav.sengupta95@email.com', '2001-10-06', '2023-03-20'),
	(1096, 'Avni', 'Basu', 'avni.basu96@email.com', '2002-06-19', '2023-05-03'),
	(1097, 'Parth', 'Ghosh', 'parth.ghosh97@email.com', '2000-01-02', '2022-11-14'),
	(1098, 'Navya', 'Kulkarni', 'navya.kulkarni98@email.com', '2003-08-15', '2023-02-27'),
	(1099, 'Rehan', 'Rastogi', 'rehan.rastogi99@email.com', '2001-03-28', '2022-09-10'),
	(1100, 'Alia', 'Bhatia', 'alia.bhatia100@email.com', '2002-10-11', '2023-06-23'),
	(1101, 'Alisha', 'Sanyal', 'alisha.sanyal101@email.com', '2000-10-31', '2023-04-09'),
	(1102, 'Veer', 'Rao', 'veer.rao102@email.com', '2002-03-24', '2022-12-16'),
	(1103, 'Misha', 'Chauhan', 'misha.chauhan103@email.com', '2001-11-17', '2023-01-28'),
	(1104, 'Rudra', 'Bhakta', 'rudra.bhakta104@email.com', '2003-05-08', '2022-10-22'),
	(1105, 'Anaya', 'Apte', 'anaya.apte105@email.com', '2000-09-01', '2023-03-12'),
	(1106, 'Parth', 'Solanki', 'parth.solanki106@email.com', '2002-07-14', '2023-05-05'),
	(1107, 'Navya', 'Mukherjee', 'navya.mukherjee107@email.com', '2001-01-26', '2022-11-19'),
	(1108, 'Arush', 'Balakrishnan', 'arush.balakrishnan108@email.com', '2003-08-09', '2023-02-07'),
	(1109, 'Ira', 'Saxena', 'ira.saxena109@email.com', '2000-12-12', '2022-09-14'),
	(1110, 'Rehan', 'Chokshi', 'rehan.chokshi110@email.com', '2002-04-05', '2023-06-21'),
	(1111, 'Vikram', 'Joshi', 'vikram.joshi111@email.com', '2002-03-14', '2023-06-19'),
	(1112, 'Pooja', 'Mishra', 'pooja.mishra112@email.com', '2000-05-23', '2022-09-14'),
	(1113, 'Yash', 'Choudhary', 'yash.choudhary113@email.com', '2001-11-02', '2023-01-10'),
	(1114, 'Ritika', 'Desai', 'ritika.desai114@email.com', '2003-06-09', '2023-04-03'),
	(1115, 'Arjun', 'Malhotra', 'arjun.malhotra115@email.com', '2001-08-26', '2023-03-01'),
	(1116, 'Sanya', 'Bajaj', 'sanya.bajaj116@email.com', '2002-10-30', '2022-10-20'),
	(1117, 'Manish', 'Tiwari', 'manish.tiwari117@email.com', '2000-12-17', '2023-02-05'),
	(1118, 'Divya', 'Garg', 'divya.garg118@email.com', '2002-02-21', '2023-05-29'),
	(1119, 'Harsh', 'Yadav', 'harsh.yadav119@email.com', '2003-03-12', '2023-07-22'),
	(1120, 'Kriti', 'Bansal', 'kriti.bansal120@email.com', '2001-07-08', '2022-12-28');

#create 2nd table
create table department_table(
	DepartmentID int primary key,
    DepartmentName varchar(50)
    );

insert into department_table values
	(1, 'Computer Science'),
    (2, 'Mathematics'),
    (3, 'Physics'),
    (4, 'Chemistry'),
    (5, 'Literature');

#create 3rd table
create table Courses_table
	(CourseID int primary key,
    CourseName Varchar (50),
    DepartmentID int ,
    Credits int,
    foreign key (DepartmentID) references department_table(DepartmentID)
    );
INSERT INTO Courses_table (CourseID, CourseName, Credits, DepartmentID)
VALUES
-- Computer Science (1)
(1, 'Introduction to SQL', 4, 1),
(2, 'Data Structures', 4, 1),
(3, 'Operating Systems', 3, 1),
(4, 'Database Management', 3, 1),
(5, 'Computer Networks', 3, 1),
(6, 'Software Engineering', 3, 1),
(7, 'Machine Learning', 4, 1),
(8, 'Artificial Intelligence', 4, 1),
(9, 'Web Development', 3, 1),
(10, 'Mobile App Development', 3, 1),

-- Mathematics (2)
(11, 'Calculus I', 4, 2),
(12, 'Calculus II', 4, 2),
(13, 'Linear Algebra', 3, 2),
(14, 'Discrete Mathematics', 3, 2),
(15, 'Probability Theory', 3, 2),
(16, 'Numerical Methods', 3, 2),
(17, 'Real Analysis', 4, 2),
(18, 'Complex Analysis', 4, 2),
(19, 'Differential Equations', 4, 2),
(20, 'Abstract Algebra', 3, 2),

-- Physics (3)
(21, 'Classical Mechanics', 4, 3),
(22, 'Quantum Physics', 4, 3),
(23, 'Thermodynamics', 3, 3),
(24, 'Electromagnetism', 3, 3),
(25, 'Nuclear Physics', 4, 3),
(26, 'Modern Physics', 3, 3),
(27, 'Optics', 3, 3),
(28, 'Particle Physics', 3, 3),
(29, 'Solid State Physics', 3, 3),
(30, 'Astrophysics', 4, 3),

-- Chemistry (4)
(31, 'Inorganic Chemistry', 4, 4),
(32, 'Organic Chemistry', 4, 4),
(33, 'Physical Chemistry', 4, 4),
(34, 'Analytical Chemistry', 3, 4),
(35, 'Biochemistry', 3, 4),
(36, 'Environmental Chemistry', 3, 4),
(37, 'Industrial Chemistry', 3, 4),
(38, 'Medicinal Chemistry', 3, 4),
(39, 'Polymer Chemistry', 3, 4),
(40, 'Green Chemistry', 3, 4),

-- Biology (5)
(41, 'Cell Biology', 4, 5),
(42, 'Genetics', 4, 5),
(43, 'Microbiology', 3, 5),
(44, 'Molecular Biology', 3, 5),
(45, 'Human Anatomy', 3, 5),
(46, 'Plant Physiology', 3, 5),
(47, 'Immunology', 3, 5),
(48, 'Ecology', 3, 5),
(49, 'Evolutionary Biology', 3, 5),
(50, 'Developmental Biology', 4, 5);

#create 4th Table 
create table instructors_table(
	InstructorID int primary key,
    FirstName Varchar(20),
    LastName Varchar(20),
    Email Varchar(50),
    DepartmentID int,
    Salary decimal(10,2),
    foreign key (DepartmentID) references Courses_table(DepartmentID)
);

INSERT INTO Instructors_table 
	(InstructorID, 
    FirstName, 
    LastName, 
    Email, 
    DepartmentID,
    Salary) VALUES
(1, 'Amit', 'Patel', 'amit.patel@university.edu', 1, 1000),
(2, 'Sneha', 'Verma', 'sneha.verma@university.edu', 1, 2000),
(3, 'Ravi', 'Sharma', 'ravi.sharma@university.edu', 1, 3000),
(4, 'Priya', 'Singh', 'priya.singh@university.edu', 1, 4000),
(5, 'Anil', 'Mehta', 'anil.mehta@university.edu', 1, 5000),
(6, 'Neha', 'Jain', 'neha.jain@university.edu', 1, 6000),
(7, 'Karan', 'Joshi', 'karan.joshi@university.edu', 2, 7000),
(8, 'Divya', 'Desai', 'divya.desai@university.edu', 2, 8000),
(9, 'Manoj', 'Rathore', 'manoj.rathore@university.edu', 2, 9000),
(10, 'Sunita', 'Yadav', 'sunita.yadav@university.edu', 2, 10000),
(11, 'Pankaj', 'Gupta', 'pankaj.gupta@university.edu', 2, 11000),
(12, 'Nikita', 'Kapoor', 'nikita.kapoor@university.edu', 2, 12000),
(13, 'Raj', 'Malhotra', 'raj.malhotra@university.edu', 3, 13000),
(14, 'Meera', 'Bansal', 'meera.bansal@university.edu', 3, 14000),
(15, 'Arjun', 'Chopra', 'arjun.chopra@university.edu', 3, 15000),
(16, 'Kavita', 'Mishra', 'kavita.mishra@university.edu', 3, 16000),
(17, 'Vinay', 'Reddy', 'vinay.reddy@university.edu', 3, 17000),
(18, 'Pooja', 'Shah', 'pooja.shah@university.edu', 3, 18000),
(19, 'Siddharth', 'Kumar', 'siddharth.kumar@university.edu', 4, 19000),
(20, 'Isha', 'Rajput', 'isha.rajput@university.edu', 4, 20000),
(21, 'Alok', 'Srivastava', 'alok.srivastava@university.edu', 4, 21000),
(22, 'Tanya', 'Dubey', 'tanya.dubey@university.edu', 4, 22000),
(23, 'Ramesh', 'Tiwari', 'ramesh.tiwari@university.edu', 4, 23000),
(24, 'Bhavna', 'Choudhary', 'bhavna.choudhary@university.edu', 4, 24000),
(25, 'Deepak', 'Goyal', 'deepak.goyal@university.edu', 5, 25000),
(26, 'Swati', 'Prajapati', 'swati.prajapati@university.edu', 5, 26000),
(27, 'Nikhil', 'Saxena', 'nikhil.saxena@university.edu', 5, 27000),
(28, 'Shalini', 'Pathak', 'shalini.pathak@university.edu', 5, 28000),
(29, 'Harsh', 'Bhatt', 'harsh.bhatt@university.edu', 5, 29000),
(30, 'Ritika', 'Agarwal', 'ritika.agarwal@university.edu', 5, 30000);

#create 5th table
create table enrollments_table(
	EnrollmentID int primary key,
    StudentID int,
    CourseID int,
    EnrollmentDate date,
    foreign key(StudentID) references Student_table(StudentID),
    foreign key(CourseID) references Courses_table(CourseID)
    );

INSERT INTO enrollments_table (EnrollmentID, StudentID, CourseID, EnrollmentDate) 
VALUES
	(1, 1003, 12, '2023-09-15'),
	(2, 1015, 8, '2024-02-10'),
	(3, 1022, 27, '2022-08-25'),
	(4, 1007, 3, '2025-01-12'),
	(5, 1041, 19, '2024-11-05'),
	(6, 1056, 33, '2023-07-08'),
	(7, 1090, 14, '2022-12-19'),
	(8, 1018, 49, '2024-03-29'),
	(9, 1102, 6, '2025-06-20'),
	(10, 1067, 45, '2023-10-03'),
	(11, 1044, 21, '2022-04-12'),
	(12, 1029, 5, '2023-11-17'),
	(13, 1110, 37, '2022-09-26'),
	(14, 1008, 25, '2024-06-14'),
	(15, 1076, 41, '2023-01-22'),
	(16, 1050, 9, '2025-05-18'),
	(17, 1034, 18, '2022-10-10'),
	(18, 1100, 11, '2023-08-01'),
	(19, 1025, 47, '2024-01-08'),
	(20, 1061, 30, '2023-06-27'),
	(21, 1083, 22, '2023-04-15'),
	(22, 1012, 7, '2024-03-10'),
	(23, 1095, 16, '2022-11-25'),
	(24, 1037, 4, '2025-02-12'),
	(25, 1108, 28, '2024-10-05'),
	(26, 1049, 34, '2023-08-08'),
	(27, 1072, 15, '2022-12-29'),
	(28, 1005, 42, '2024-04-29'),
	(29, 1088, 10, '2025-07-20'),
	(30, 1063, 46, '2023-11-03'),
	(31, 1042, 23, '2022-05-12'),
	(32, 1019, 2, '2023-12-17'),
	(33, 1104, 38, '2022-10-26'),
	(34, 1009, 26, '2024-07-14'),
	(35, 1078, 40, '2023-02-22'),
	(36, 1052, 13, '2025-06-18'),
	(37, 1036, 17, '2022-11-10'),
	(38, 1097, 1, '2023-09-01'),
	(39, 1027, 48, '2024-02-08'),
	(40, 1065, 31, '2023-07-27'),
	(41, 1087, 24, '2023-05-15'),
	(42, 1014, 6, '2024-04-10'),
	(43, 1099, 20, '2022-12-25'),
	(44, 1039, 1, '2025-03-12'),
	(45, 1106, 29, '2024-11-05'),
	(46, 1051, 35, '2023-09-08'),
	(47, 1074, 16, '2023-01-29'),
	(48, 1006, 43, '2024-05-29'),
	(49, 1089, 11, '2025-08-20'),
	(50, 1064, 44, '2023-12-03'),
	(51, 1043, 20, '2022-06-12'),
	(52, 1021, 3, '2024-01-17'),
	(53, 1105, 39, '2022-11-26'),
	(54, 1010, 27, '2024-08-14'),
	(55, 1079, 36, '2023-03-22'),
	(56, 1053, 14, '2025-07-18'),
	(57, 1038, 19, '2022-12-10'),
	(58, 1098, 2, '2023-10-01'),
	(59, 1028, 49, '2024-03-08'),
	(60, 1066, 32, '2023-08-27'),
	(61, 1084, 25, '2023-06-15'),
	(62, 1016, 8, '2024-05-10'),
	(63, 1101, 21, '2023-01-25'),
	(64, 1040, 5, '2025-04-12'),
	(65, 1107, 30, '2024-12-05'),
	(66, 1054, 36, '2023-10-08'),
	(67, 1075, 17, '2023-02-28'),
	(68, 1007, 44, '2024-06-29'),
	(69, 1091, 12, '2025-09-20'),
	(70, 1068, 47, '2024-01-03'),
	(71, 1045, 26, '2022-07-12'),
	(72, 1023, 4, '2024-02-17'),
	(73, 1103, 40, '2022-12-26'),
	(74, 1011, 28, '2024-09-14'),
	(75, 1080, 37, '2023-04-22'),
	(76, 1055, 15, '2025-08-18'),
	(77, 1041, 20, '2023-01-10'),
	(78, 1096, 3, '2023-11-01'),
	(79, 1030, 50, '2024-04-08'),
	(80, 1069, 33, '2023-09-27'),
	(81, 1085, 27, '2023-07-15'),
	(82, 1017, 9, '2024-06-10'),
	(83, 1100, 22, '2023-02-25'),
	(84, 1046, 6, '2025-05-12'),
	(85, 1109, 31, '2025-01-05'),
	(86, 1057, 37, '2023-11-08'),
	(87, 1076, 18, '2023-03-29'),
	(88, 1008, 45, '2024-07-29'),
	(89, 1092, 13, '2025-10-20'),
	(90, 1070, 48, '2024-02-03'),
	(91, 1047, 28, '2022-08-12'),
	(92, 1024, 5, '2024-03-17'),
	(93, 1102, 41, '2023-01-26'),
	(94, 1013, 29, '2024-10-14'),
	(95, 1081, 38, '2023-05-22'),
	(96, 1058, 16, '2025-09-18'),
	(97, 1042, 21, '2023-02-10'),
	(98, 1094, 4, '2023-12-01'),
	(99, 1031, 1, '2024-05-08'),
	(100, 1071, 34, '2023-10-27'),
	(101, 1086, 29, '2023-08-15'),
	(102, 1018, 10, '2024-07-10'),
	(103, 1110, 23, '2023-03-25'),
	(104, 1048, 7, '2025-06-12'),
	(105, 1111, 32, '2025-02-05'),
	(106, 1059, 38, '2023-12-08'),
	(107, 1077, 19, '2023-04-29'),
	(108, 1009, 46, '2024-08-29'),
	(109, 1093, 14, '2025-11-20'),
	(110, 1073, 49, '2024-03-03'),
	(111, 1050, 30, '2022-09-12'),
	(112, 1025, 6, '2024-04-17'),
	(113, 1104, 42, '2023-02-26'),
	(114, 1014, 30, '2024-11-14'),
	(115, 1082, 39, '2023-06-22'),
	(116, 1060, 17, '2025-10-18'),
	(117, 1043, 22, '2023-03-10'),
	(118, 1095, 5, '2024-01-01'),
	(119, 1032, 2, '2024-06-08'),
	(120, 1074, 35, '2023-11-27');

#1Performing CRUD Operations
#CREATE
insert into Student_table values
	(121, 'Jayshree', 'Suthar', 'jayshree.suthar@gmail.com','2007-05-28','2022-09-01');
insert into Courses_table values
    (51, 'micro Biology', 4, 5);
insert into instructors_table values
    (31, 'Pooja', 'Agarwal', 'pooja.agarwal@university.edu', 5,20000);
insert into enrollments_table values
    (121, 1021, 27, '2024-02-29');
insert into enrollments_table values
    (123, 1031, 2, '2024-02-29');
insert into department_table values
    (6, 'Biology');
    
#READ
select * from Student_table;
select * from department_table;
select * from Courses_table;
select * from instructors_table;
select * from enrollments_table;

#Update
update Student_table
set Email = 'john.updated@email.com'
where StudentID = 1;
update department_table
set DepartmentName ='English'
where DepartmentID =5;
update Courses_table
set CourseName = 'Statistics'
where CourseID =106;
update instructors_table
set FirstName = 'Roseanne'
where InstructorID =31;
update enrollments_table
set EnrollmentDate ='2022-05-04'
where EnrollmentID =3;

#DELETE
delete from department_table
where DepartmentID =6;
delete from enrollments_table
where EnrollmentID=121;
delete from instructors_table 
where DepartmentID = (select DepartmentID from courses_table where CourseID = 51);
delete from courses_table 
where CourseID = 51;
delete from instructors_table
where InstructorID = 31;
delete from Student_table
where StudentID=121;

#2RETRIVE STUDENT ENROLLED AFTER 2022
select * from enrollments_table where Year(EnrollmentDate) >2022;

#3COURSES OFFERED BY MATHEMATICS DEPARTMENT
select c.* from courses_table c 
	join department_table d on c.DepartmentID = d.DepartmentID 
where d.DepartmentName = 'Mathematics' 
limit 5;

#4STUDENTS ENROLLED IN EACH COURSE
select c.courseName, count(E.StudentID) 
	as TotalEnrolled 
from enrollments_table e
	Join courses_table c 
on e.courseID = c.courseID
	group by c.CourseName
	having count(e.studentID) >5;

#5 STUDENTS ENROLLED IN BOTH INTRO TO SQL AND DATA STRUCTURE
select distinct s.StudentID, s.FirstName, s.LastName
from Student_table s
join enrollments_table e1 on s.StudentID = e1.StudentID
join Courses_table c1 on e1.CourseID = c1.CourseID and c1.CourseName = 'Introduction to SQL'
join enrollments_table e2 on s.StudentID = e2.StudentID
join Courses_table c2 on e2.CourseID = c2.CourseID and c2.CourseName = 'Data Structures';

#6 STUDENTS WHO ARE EITHER ENROLLED IN INTRO TO SQL OR DATA STRUCTURE
select distinct s.StudentID, s.FirstName, s.LastName
from Student_table s
join enrollments_table e on s.StudentID = e.StudentID
join Courses_table c on e.CourseID = c.CourseID 
where c.CourseName = 'Introduction to SQL'
	or c.CourseName = 'Data Structures';
    
#7 CALCULATE THE AVERAGE NUMBER OF CREDITS FOR ALL COURSES
select avg(Credits) as AverageCredits
from Courses_table;

#8 FIND THE MAX SALARY OF INSTRUCTOR IN CS DEPARTMENT
select max(Salary) from instructors_table i 
join department_table d on i.departmentID =  d.departmentID
where d.departmentName = 'Computer Science';

#9 COUNT THE NUMBER OF STUDENTS ENROLLED IN EACH DEPARTMENT
select  d.DepartmentName, 
		count(distinct s.StudentID) as StudentCount 
from Student_table s
join enrollments_table e on s.StudentID = e.StudentID
join Courses_table c on e.courseID = c.CourseID
join department_table d on c.departmentID = d.departmentID
group by d.DepartmentName;

#10 INNER JOIN
select  s.StudentID, 
		concat(FirstName, ' ', LastName ) as Full_Name, 
        c.CourseID, 
        c.CourseName
from Student_table s 
inner join enrollments_table  e on s.StudentID = e.StudentID
inner join Courses_table c on e.CourseID = c.CourseID;

#11 LEFT JOIN
select  s.StudentID, 
		concat(FirstName, ' ', LastName ) as Full_Name, 
        c.CourseID, 
        c.CourseName
from Student_table s 
left join enrollments_table  e on s.StudentID = e.StudentID
left join Courses_table c on e.CourseID = c.CourseID;

#12 Subquery 
select  s.StudentID, 
		concat(FirstName, ' ', LastName ) as Full_Name, 
        c.CourseID, 
        c.CourseName
from Student_table s 
join enrollments_table  e on s.StudentID = e.StudentID
join Courses_table c on e.CourseID = c.CourseID
where c.CourseID in(
	select CourseID
    from enrollments_table
    group by CourseID
    having count(StudentID)> 10
);

#13 EXTRACT THE YEAR FROM THE ENROLLMENTDATE OF STUDENTS
select  StudentID, 
	concat(FirstName, ' ', LastName ) as Full_Name, 
	year(EnrollmentDate) 
from student_table;

#14 CONCATE INSTRUCTOR'S NAME
select concat(FirstName, ' ', LastName ) as Full_Name 
from instructors_table;

#15 CALCUALTE RUNNING TABLE OF STUDENTS ENROLLED IN COURSES
select 	s.StudentID, 
		concat(s.FirstName, ' ', s.LastName ) as Full_Name,
        count(*) over(order by s.EnrollmentDate) as RunningTotal
from student_table s
join enrollments_table e on s.StudentID = e.StudentID;

#16 LABEL STUDENTS AS SENIOR OR JUNIOR
select 
    StudentID, 
    concat(FirstName, ' ', LastName ) as Full_Name,
    EnrollmentDate,
    case 
        when TIMESTAMPDIFF(YEAR, EnrollmentDate, CURDATE())> 4 then 'Senior'
        else 'Junior'
    end as label
from student_table;

