USE master;
GO
CREATE DATABASE test2_db
ON
(NAME = test2_db_dat,
FILENAME = 'C:\temp\test2_db.mdf',
SIZE = 2,
MAXSIZE = UNLIMITED,
FILEGROWTH = 5%)
LOG ON
(NAME = test2_db_log,
FILENAME = 'C:\temp\test_db.ldf',
SIZE = 1,
MAXSIZE = 10,
FILEGROWTH = 250KB);

CREATE DATABASE test3_db
ON
(NAME = test3_db_dat,
FILENAME = 'C:\temp\test3_db.mdf',
SIZE = 5,
MAXSIZE = UNLIMITED,
FILEGROWTH = 10%)
LOG ON
(NAME = test3_db_log,
FILENAME = 'C:\temp\test3_db.ldf',
SIZE = 4,
MAXSIZE = 20,
FILEGROWTH = 500KB);

USE master;
ALTER DATABASE test2_db
ADD LOG File (NAME=emp_log1,
FILENAME='C:\temp\test2_db.ldf',
SIZE = 1, MAXSIZE = UNLIMITED,FILEGROWTH = 1);

USE master;
ALTER DATABASE test3_db
ADD LOG File (NAME=emp_log2,
FILENAME = 'C:\temp\emp_log.ldf',
SIZE = 2, MAXSIZE = UNLIMITED, FILEGROWTH = 1);

USE master;
ALTER DATABASE test2_db
MODIFY FILE
(NAME = test2_db_dat, SIZE = 10MB);

USE master;
ALTER DATABASE test3_db
MODIFY FILE
(NAME = test3_db_dat, SIZE = 10MB);

USE test2_db;
CREATE TABLE customers(customerid char(5) not null,
companyName Varchar(40) not null,
contactName char(30) null,
address varchar(60) null,
city char(15) null,
phone char(24) null,
fax char(24)null);

CREATE TABLE orders (orderid integer not null,
customerid char(5) not null,
orderdate datetime null,
shippeddate datetime null,
freight money null,
shipname varchar(40) null,
shipaddress varchar(60) null,
quanity integer null);

insert into customers values (10001, 'Microsoft', 'Aldo Cauvi', '20378 e. country club dr. apt 2133', 'aventura', '3053432046', '3053432047');
insert into customers values (10002, 'Google', 'Gaby Alvarez', '20379 w. country club dr. apt 2134', 'aventura', '3053432088', '3053432089');
insert into customers values (10003, 'Facebook inc.', 'Renzo Aqua', '31245 Hialeah blvd apt 34', 'Hialeah', '3058762123', '3053432123');
insert into customers values (10004, 'Amazon inc.', 'Alan Alpacutan', '876 w. Hialeah dr. apt 34', 'Hialeah', '305887654', '3053432321');
insert into customers values (10005, 'Alphabet', 'Adrian golpe', '354 Hialeah pkwy apt 654', 'Hialeah', '3058762987', '3053432987');
insert into customers values (10006, 'Walmart', 'Brando Steinbach', '432 Biscayne Blvd', 'North Miami', '3058762543', '3053432654');
insert into customers values (10007, 'Hewlet packard', 'Barbara Candice', '874 Dixie Hwy apt 345', 'North Miami', '3058765566', '3053432199');
insert into customers values (10008, 'Apple inc', 'Elvira Blacker', '127 Brickell ave', 'Miami', '3058769988', '3053432188');
insert into customers values (10009, 'Samsung Electronics', 'Raul Domingo', '17111 Collins ave apt 2211', 'Sunny Isles', '3058765544', '3053431122');
insert into customers values (10010, 'LG electronics', 'Eddie Steinbach', '16789 Collins ave apt 3300', 'Sunny Isles', '3058761230', '3053438776');


insert into orders values('01', '01','01.01.2020','01.02.2020','10','ship1','123 park ave. miami florida','5');
