create database sample;
use sample;

CREATE TABLE employee (emp_no INTEGER NOT NULL, 
emp_fname CHAR(20) NOT NULL,
emp_Lname CHAR(20) NOT NULL,
dept_no CHAR(4) NULL);

CREATE TABLE department (dept_no CHAR(4) NOT NULL,
dept_name CHAR(25) NOT NULL,
location CHAR(30) NULL);

CREATE TABLE project (project_no CHAR(4) NOT NULL,
project_name CHAR(15) NOT NULL,
budget FLOAT NULL);

CREATE TABLE works_on (emp_no INTEGER NOT NULL,
project_no CHAR(4) NOT NULL,
job CHAR (15) NULL,
enter_date DATE NULL);

INSERT INTO EMPLOYEE VALUES(25348, 'Matthew','Smith','d3');
INSERT INTO EMPLOYEE VALUES(10102, 'Ann','Jones','d3');
INSERT INTO EMPLOYEE VALUES(18316, 'John','Barrimore','d1');
INSERT INTO EMPLOYEE VALUES(29346, 'James','James','d2');
INSERT INTO EMPLOYEE VALUES(9031, 'Elke','Hansel','d2');
INSERT INTO EMPLOYEE VALUES(2581, 'Elsa','Bertoni','d2');
INSERT INTO EMPLOYEE VALUES(28559, 'Sybill','Moser','d1');

insert into department values('d1','Research','Dallas');
insert into department values('d2','Accounting','Seattle');
insert into department values('d3','Marketing','Dallas');

insert into project values('p1','Apollo','120000.00');
insert into project values('p2','Gemini','95000.00');
insert into project values('p3','Mercury','186500.00');

insert into works_on values (10102,'p1','Analyst','2006.10.1');
insert into works_on values (10102,'p3','Manager','2008.1.1');
insert into works_on values (25348,'p2','Clerk','2007.2.15');
insert into works_on values (18316,'p2',NULL,'2007.6.1');
insert into works_on values (29346,'p2',NULL,'2006.12.15');
insert into works_on values (2581,'p3','Analyst','2007.10.15');
insert into works_on values (9031,'p1','Manager','2007.4.15');
insert into works_on values (28559,'p1',NULL,'2007.8.1');
insert into works_on values (25559,'p2','Clerk','2008.2.1');
insert into works_on values (9031,'p3','Clerk','2006.11.15');
insert into works_on values (29346,'p1','Clerk','2007.1.4');

/* 
What is the primary key in the works_on table?
The primary key of the works_on table are emp_no and project_no

How many tables do we have in this database?
Four tables: 
1.Department
2.Employee
3.Project
4.Works_on

How many entities do we have in this database?
We have 3 entities (real world objects)
1.Employee
2.Department
3.Project

What is the name of our database?
The name of our database is sample.

How many records do we have on each table?
department= 3
employee=7
project=3
works_on 11

Which field would you add to every table (if any) and why?
I would add the following fields to each table:
Employee table: I would add a date of birth field because two employees can have the same first name and last name
Department table: The department table is clear as it is, but if it's necessary to add a new filed I would add number of employees in each department to know how many resources I have available to assign in each project
Project table:Also Project table is clear as it is but if is necessary to add an aditional field, I would add number of persons needed in each project, to be able to calculate the employees needed in each project.
Works_on table:I would add a project end_date field to know when an employee is done working for a project to know when a resource becomes available to work on another project.

*/