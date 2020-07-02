CREATE DATABASE Chapter7;
USE Chapter7;
CREATE TABLE employee  (emp_no INTEGER NOT NULL,
                    	emp_fname CHAR(20) NOT NULL,
                    	emp_lname CHAR(20) NOT NULL,
                    	dept_no CHAR(4) NULL);
CREATE TABLE department(dept_no CHAR(4) NOT NULL,
                    	dept_name CHAR(25) NOT NULL,
                    	location CHAR(30) NULL);
CREATE TABLE project   (project_no CHAR(4) NOT NULL,
                    	project_name CHAR(15) NOT NULL,
                    	budget FLOAT NULL);
CREATE TABLE works_on (emp_no INTEGER NOT NULL,
                    	project_no CHAR(4) NOT NULL,
                    	job CHAR (15) NULL,
                    	enter_date DATE NULL);
insert into employee values(25348, 'Matthew', 'Smith',	'd3');
insert into employee values(10102, 'Ann', 	'Jones',	'd3');
insert into employee values(18316, 'John',	'Barrimore','d1');
insert into employee values(29346, 'James',   'James',	'd2');
insert into employee values(9031,  'Elke',	'Hansel',   'd2');
insert into employee values(2581,  'Elsa',	'Bertoni',  'd2');
insert into employee values(28559, 'Sybill',  'Moser',	'd1');
insert into department values ('d1', 'Research',   'Dallas');
insert into department values ('d2', 'Accounting', 'Seattle');
insert into department values ('d3', 'Marketing',  'Dallas');
insert into project values ('p1', 'Apollo', 120000.00);
insert into project values ('p2', 'Gemini', 95000.00);
insert into project values ('p3', 'Mercury', 186500.00);
insert into works_on values (10102, 'p1',  'Analyst', '2006.10.1');
insert into works_on values (10102, 'p3',  'Manager', '2008.1.1');
insert into works_on values (25348, 'p2',  'Clerk', '2007.2.15');
insert into works_on values (18316, 'p2',  NULL, '2007.6.1');
insert into works_on values (29346, 'p2',  NULL, '2006.12.15');
insert into works_on values (2581,  'p3',  'Analyst', '2007.10.15');
insert into works_on values (9031,  'p1',  'Manager', '2007.4.15');
insert into works_on values (28559, 'p1',  NULL, '2007.8.1');
insert into works_on values (28559, 'p2',  'Clerk', '2008.2.1')
insert into works_on values (9031,  'p3',  'Clerk', 	'2006.11.15'); 
insert into works_on values (29346, 'p1',  'Clerk', '2007.1.4');




Use Chapter7;
Select emp_lname, dept_no
From employee
Where emp_no>20000
Order by emp_lname;

Use Chapter7;
Select emp_lname, dept_no
From employee
Where emp_no>20000
Order by 1;

--Run a similar query 
but this time I want the first and last name of every employee with an ID greater than 10000. I would like you to order by last names and then by first names. 

Use Chapter7;
Select emp_fname, emp_lname
From employee
Where emp_no>10000
Order by 2,1;

Use Chapter7;
Select emp_fname, emp_lname
From employee
Where emp_no>10000
Order by emp_lname,emp_fname;

Use Chapter7;
Select emp_no,emp_fname,emp_lname,dept_no
Into employee_enh
From employee; 

Alter table employee_enh
Add domicile char(25) Null;

Use Chapter7;
Update employee_enh set domicile='San Antonio'
Where emp_no=25348;
Update employee_enh set domicile='Houston'
Where emp_no=10102;
Update employee_enh set domicile='San Antonio'
Where emp_no=18316;

Update employee_enh set domicile='Seattle' 
Where emp_no=29346;

Update employee_enh set domicile='Portland'
Where emp_no=9031;
Update employee_enh set domicile='Tacoma'
Where emp_no=2581;
Update employee_enh set domicile='Houston' 
Where emp_no=28559;

Use Chapter7;
Select domicile 
From employee_enh
Union 
Select location
From department;

Use Chapter7;
Select emp_no
From employee
Where dept_no='d3'
Union
Select emp_no
From works_on
Where enter_date<'5/1/2007'
Order by 1;



