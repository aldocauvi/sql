use AdventureWorks2017;
create synonym PriceHistory for Production.ProductListPriceHistory;
create synonym DescriptionCulture for ProductModelProductDescriptionCulture;

use sample;
create type zip from smallint not null;

Drop table customer;

Use sample;
create table customer
(cust_no int not null,
cust_name char(20) not null,
city char(20),
zip_code zip,
check(zip_code Between 601 and 99950));

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(20) NOT NULL,
    FirstName varchar(20),
    Age int,
    CHECK (Age>=18)
);

create type age from smallint not null;

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(20) NOT NULL,
    FirstName varchar(20),
    Age age,
    CHECK (Age>=18)
);

Create type expenses from tinyint not null;

CREATE TABLE Expenses (
emp_fname varchar (20) not null,
emp_lname varchar (20) not null,
emp_no int not null,
Travel expenses,
Lodging expenses,
Transportation expenses,
CHECK (travel<=250));