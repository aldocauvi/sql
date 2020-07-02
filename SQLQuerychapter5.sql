CREATE DATABASE test_db 
ON 
(NAME=test_db_dat,
FILENAME='C:\temp\test_db.mdf',
SIZE=5,
MAXSIZE=Unlimited,
FILEGROWTH=8)
LOG ON
(NAME=test_db_LOG,
FILENAME='C:\temp\test_db_log.ldf',
SIZE=2,
MAXSIZE=10,
FILEGROWTH=500KB);

ALTER DATABASE test_db
ADD LOG FILE
(NAME=test_db_log1,
FILENAME='C:\temp\emp_log1.ldf',
SIZE=2,
MAXSIZE=Unlimited,
FILEGROWTH=2)

ALTER DATABASE test_db
MODIFY FILE
(NAME = test_db_dat, SIZE = 10MB);

USE test;
CREATE TABLE customers(customerid char(5) not null, companyname varchar(40) not null, contactname char(30) null,
address varchar(60) null, city char(15) null, phone char(24) null, fax char(24) null);

USE test;
CREATE TABLE orders(orderid int not null, customerid char(5) not null, orderdate date null, 
shippeddate date null, freight money null, shipname varchar(40) null, shipaddress varchar(60) null, quantity int null)

ALTER TABLE orders ADD shipregion int null;

ALTER TABLE orders ALTER COLUMN shipregion char(8) null;

ALTER TABLE orders DROP COLUMN shipregion;



USE test;
DROP table customers;
DROP table orders;

USE test;
CREATE TABLE customers(customerid char(5) not null PRIMARY KEY, companyname varchar(40) not null, contactname char(30) null,
address varchar(60) null, city char(15) null, phone char(24) null, fax char(24) null);

USE test;
CREATE TABLE orders(orderid int not null PRIMARY KEY, customerid char(5) not null FOREIGN KEY REFERENCES customers(customerid), orderdate date null, 
shippeddate date null, freight money null, shipname varchar(40) null, shipaddress varchar(60) null, quantity int null);

INSERT INTO orders(orderid,
customerid, orderdate, shippeddate, freight, shipname, shipaddress, quantity)
VALUES (10, 'ORD01', getdate(), getdate(), 100.0, 'Windstar', 'Ocean',1);

GO
ALTER TABLE orders ADD CONSTRAINT DF_orders DEFAULT GETDATE() FOR orderdate;

GO
ALTER TABLE orders ADD CONSTRAINT order_check CHECK(quantity BETWEEN 1 and 30);

USE test;
EXEC sp_helpconstraint 'customers';
EXEC sp_helpconstraint 'orders';

	
ALTER TABLE customers
DROP COLUMN customerid;

drop table employee;
USE test;
CREATE table employee (emp_no int not null,
emp_fname char(20) not null,
emp_lname char (20) not null,
dept_no char (4) null,
CONSTRAINT prim_empl PRIMARY KEY (emp_no));

ALTER TABLE employee  
DROP CONSTRAINT prim_empl;  

EXEC sp_rename 'customers.city', 'town', 'COLUMN';