create database data_digger;
use data_digger;


#first table
create table customers_table (CustomerID int primary key, Name varchar(50), Email Varchar(100), Address Varchar(100));
insert into customers_table values(1, 'Pooja Suthar', 'poojasuthar12@gmail.com', 'B-12, abc, punagam, surat'),
(2, 'Payal Prajapat', 'payalpraja90@gmail.com', 'E-55, xyz, punagam, surat'),
(3, 'Koshal Sisodiya', 'koshalsiso17@gmail.com', 'B-901, byz, godadara, surat'),
(4, 'Komal Suthar', 'komalshree45@gmail.com', 'C-16, abc, varacha, surat'),
(5, 'Heena Suthar', 'heenashree34@gmail.com', 'G-06, cyz, andheri, Mumbai'),
(6, 'Alice Sharma', 'alice34@gmail.com','3 street new york city'),
(7, 'Alice sen', 'alice34@gmail.com','3 street new york city');

#Query
select * from customers_table;
update customers_table
set Address='A-204, shree, punagam, surat'
Where CustomerID=1;
select * from customers_table where Name ='Alice sen';
delete from customers_table 
where CustomerID=7;


#second table
Create table order_table(
	OrderID int primary key,
    CustomerID int,
	OrderDate datetime, 
	TotalAmount decimal(10,2), 
	foreign key(CustomerID) references customers_table(CustomerID)
);
insert into order_table values
(101, 1, '2025-01-26', 25000.00),
(102, 2, '2025-07-04', 75000.00),
(103, 3, '2024-06-13', 50000.00),
(104, 4, '2023-11-24', 96000.00),
(105, 5, '2025-07-18', 52000.00),
(106, 6, '2023-02-4', 42000.00);

#query 
select * from order_table;
select * from order_table where CustomerID=3;
update order_table
set TotalAmount = 50000
where OrderID= 101;
delete from order_table
where OrderID=106;
select * from order_table 
where OrderDate >= curdate() - INTERVAL 30 DAY;
-- Aggregates--
select MAX(TotalAmount) as Highest from order_table;
select MIN(TotalAmount) as Lowest from order_table;
select AVG(TotalAmount) as Average from order_table;

# third table
create table products_table (
	ProductID int Primary key, 
	ProductName varchar(50), 
	Price decimal(10,2), 
	Stock int
);
insert into products_table values
(1, 'Keyboard', 1200, 10),
(2, 'Mouse', 800, 5),
(3, 'Monitor', 10500, 7),
(4, 'Mobile Phone', 50000, 3),
(5, 'Charger', 500, 0);

#Query
select * from products_table order by price desc;

update products_table 
set price=12000
where ProductID = 3;

set sql_safe_updates = 0;
delete from products_table
where Stock=0;

select * from products_table where price between 500 and 2000;

select ProductName, Price from products_table where 
Price=(SELECT MAX(Price) as Most_Expensive from products_table);

select ProductName, Price from products_table where 
Price=(SELECT MIN(Price) as Cheapest from products_table);

#fourth table
create table OrderDetails(
	OrderDetailsID int primary key, 
	OrderID int, 
	ProductID int, 
	Quantity int, 
	SubTotal decimal(10,2), 
	foreign key(OrderID) references order_table(OrderID), 
	foreign key(ProductID) references products_table(ProductID)
);
insert into OrderDetails values
(1, 101, 2, 10, 8000.00),
(2, 102, 2, 8, 6400.00),
(3, 103, 4, 1, 50000.00),
(4, 104, 4, 3, 150000.00),
(5, 105, 1, 3, 3600.00);

#Query
select * from OrderDetails where OrderID = 101;

select sum(SubTotal) as TotalRevenue from OrderDetails;

select 
	od.ProductID, 
    p.ProductName, 
    SUM(od.Quantity) AS TotalQty
from 
	OrderDetails od
JOIN
	products_table p ON od.ProductID = p.ProductID
group by 
	od.ProductID, p.ProductName
order by 
	TotalQty desc
Limit 3;

select count(*) as TimesSold
from OrderDetails
where ProductID =4;
