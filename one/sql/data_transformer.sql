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

#5subquery to find orders worth more than average amount
SELECT * 
FROM Orders_table 
WHERE TotalAmount > (
    SELECT AVG(TotalAmount) FROM Orders_table
);

#6subquery to find salaries above avg salary
SELECT * 
FROM employees_table 
WHERE Salary > (
    SELECT AVG(Salary) FROM employees_table
);

#7get year and month from OrderDate
SELECT OrderID, 
       YEAR(OrderDate) AS OrderYear,
       MONTH(OrderDate) AS OrderMonth
FROM orders_table;

#8difference in days
SELECT OrderID, DATEDIFF(CURDATE(), OrderDate) 
AS DaysSinceOrder
FROM orders_table;

#9format OrderDate
SELECT OrderID, DATE_FORMAT(OrderDate, '%d-%b-%Y') AS FormattedDate
FROM orders_table;

#10Concate Names
SELECT CONCAT(FirstName, ' ', LastName) AS FullName
FROM customers_table;

#11Replace
SELECT REPLACE(FirstName, 'Karan', 'Kareena') AS UpdatedName
FROM customers_table;

#12Convert case
SELECT UPPER(FirstName) AS FirstUpper, LOWER(LastName) AS LastLower
FROM customers_table;

#13trim extra spaces
SELECT TRIM(Email) AS CleanEmail
FROM customers_table;

#14totol of totalAmount
SELECT OrderID, TotalAmount,
       SUM(TotalAmount) OVER (ORDER BY OrderDate) AS RunningTotal
FROM orders_table;

#15rank orders
SELECT OrderID, TotalAmount,
       RANK() OVER (ORDER BY TotalAmount DESC) AS OrderRank
FROM orders_table;

#16assign a discount
SELECT OrderID, TotalAmount,
       CASE 
           WHEN TotalAmount > 1000 THEN '10% Discount'
           WHEN TotalAmount > 500 THEN '5% Discount'
           ELSE 'No Discount'
       END AS Discount
FROM orders_table;

#17Categorize the salaries
SELECT EmployeeID, Salary,
       CASE 
           WHEN Salary > 60000 THEN 'High'
           WHEN Salary BETWEEN 30000 AND 60000 THEN 'Medium'
           ELSE 'Low'
       END AS SalaryCategory
FROM employees_table;

