create database data_transformer;
use data_transformer;
create table Customers_table(
	CustomerID int primary key, 
	FirstName varchar(15), 
    LastName Varchar(15), 
    Email Varchar(50), 
    RegistrationDate date);

INSERT INTO Customers_table  VALUES
(1, 'Pooja', 'Suthar', 'pooja.suthar@example.com', '2025-07-01'),
(2, 'Rahul', 'Mehta', 'rahul.mehta@example.com', '2025-07-02'),
(3, 'Anita', 'Verma', 'anita.verma@example.com', '2025-07-03'),
(4, 'Karan', 'Patel', 'karan.patel@example.com', '2025-07-04'),
(5, 'Sneha', 'Sharma', 'sneha.sharma@example.com', '2025-07-05'),
(6, 'Vikram', 'Singh', 'vikram.singh@example.com', '2025-07-06'),
(7, 'Neha', 'Jain', 'neha.jain@example.com', '2025-07-07'),
(8, 'Aman', 'Joshi', 'aman.joshi@example.com', '2025-07-08'),
(9, 'Divya', 'Kumar', 'divya.kumar@example.com', '2025-07-09'),
(10, 'Sanjay', 'Desai', 'sanjay.desai@example.com', '2025-07-10');
INSERT INTO Customers_table (CustomerID, FirstName, LastName, Email, RegistrationDate)
VALUES (11, 'Tina', 'Kapoor', 'tina.kapoor@example.com', '2025-07-11');

create table Orders_table(
	OrderID int primary key,
    CustomerID int,
    OrderDate date,
    TotalAmount decimal(10,2),
    foreign key (CustomerID) references Customers_table(CustomerID));
    
INSERT INTO Orders_table VALUES
(101, 1, '2025-07-05', 1500.00),
(102, 2, '2025-07-06', 2300.50),
(103, 3, '2025-07-06', 1750.75),
(104, 4, '2025-07-07', 3200.00),
(105, 5, '2025-07-08', 900.25),
(106, 6, '2025-07-08', 4500.99),
(107, 7, '2025-07-09', 2700.40),
(108, 8, '2025-07-10', 1100.00),
(109, 9, '2025-07-10', 3850.80),
(110, 10, '2025-07-11', 2000.00);

create table Employees_table(
EmployeeID int primary key,
FirstName varchar(10),
LastName varchar(10),
Department varchar(20),
HireDate date,
Salary decimal(10,5)
);

INSERT INTO Employees_table VALUES
(1, 'Ravi', 'Patel', 'IT', '2020-01-15', 55000.00),
(2, 'Sneha', 'Desai', 'HR', '2019-03-12', 48000.50),
(3, 'Amit', 'Shah', 'Finance', '2021-06-20', 62000.75),
(4, 'Kiran', 'Joshi', 'IT', '2018-11-05', 71000.00),
(5, 'Pooja', 'Mehta', 'Marketing', '2022-02-10', 45000.25),
(6, 'Raj', 'Verma', 'Sales', '2017-07-01', 67000.90),
(7, 'Anita', 'Singh', 'Finance', '2023-05-22', 52000.00),
(8, 'Vikas', 'Rathore', 'IT', '2020-10-30', 60000.00),
(9, 'Neha', 'Kumar', 'HR', '2021-09-14', 49500.00),
(10, 'Sanjay', 'Yadav', 'Sales', '2016-08-19', 73000.30);

#1inner join
select ct.CustomerID, 
		ct.FirstName, 
        ct.LastName, 
        ct.Email, 
        ct.RegistrationDate,
        ot.OrderId, 
        ot.OrderDate, 
        ot.TotalAmount
	from 
		customers_table ct
	inner join 
		orders_table ot 
	on 
        ct.CustomerID = ot.customerID;

#2left join
SELECT 
    ct.CustomerID, 
    ct.FirstName, 
    ct.LastName, 
    ct.Email, 
    ct.RegistrationDate,
    ot.OrderID, 
    ot.OrderDate, 
    ot.TotalAmount
FROM 
    Customers_table ct
LEFT JOIN 
    Orders_table ot ON ct.CustomerID = ot.CustomerID;

#3right join
select ct.CustomerID, 
    ct.FirstName, 
    ct.LastName, 
    ct.Email, 
    ct.RegistrationDate,
    ot.OrderID, 
    ot.OrderDate, 
    ot.TotalAmount 
from 
	Customers_table ct
right join 
	Orders_table ot ON ct.CustomerID = ot.CustomerID;

#4full join
SELECT * FROM Customers_table ct
LEFT JOIN Orders_table ot ON ct.CustomerID = ot.CustomerID
union
select * from Customers_table ct
right join Orders_table ot ON ct.CustomerID = ot.CustomerID;

#5 Orders worth more than the average
select * from orders_table
	where TotalAmount>
	(select avg(TotalAmount) 
from orders_table);

#6 salaries above average salary
select * from employees_table
	where salary>
    (select avg (salary)
from employees_table);

#7 extract year and month
select OrderId,
year(OrderDate) As OrderYear,
month(OrderDate) As OrderMonth
from orders_table;

#8 difference between days 
select OrderDate 
