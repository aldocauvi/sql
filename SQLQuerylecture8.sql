CREATE DATABASE Chapter6;
USE Chapter6;
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
insert into employee values(25348, 'Matthew', 'Smith','d3');
insert into employee values(10102, 'Ann', 'Jones','d3');
insert into employee values(18316, 'John','Barrimore','d1');
insert into employee values(29346, 'James',  'James','d2');
insert into employee values(9031,  'Elke','Hansel', 'd2');
insert into employee values(2581,  'Elsa','Bertoni', 'd2');
insert into employee values(28559, 'Sybill',  'Moser',	'd1');
insert into department values ('d1', 'Research',  'Dallas');
insert into department values ('d2', 'Accounting', 'Seattle');
insert into department values ('d3', 'Marketing',  'Dallas');
insert into project values ('p1', 'Apollo', 120000.00);
insert into project values ('p2', 'Gemini', 95000.00);
insert into project values ('p3', 'Mercury', 186500.00);
insert into works_on values (10102, 'p1',  'Analyst',  '2006.10.1');
insert into works_on values (10102, 'p3',  'Manager', '2008.1.1');
insert into works_on values (25348, 'p2',  'Clerk', '2007.2.15');
insert into works_on values (18316, 'p2',  NULL, '2007.6.1');
insert into works_on values (29346, 'p2',  NULL,'2006.12.15');
insert into works_on values (2581,  'p3',  'Analyst',  '2007.10.15');
insert into works_on values (9031,  'p1',  'Manager', '2007.4.15');
insert into works_on values (28559, 'p1',  NULL, '2007.8.1');
insert into works_on values (28559, 'p2',  'Clerk', '2008.2.1')
insert into works_on values (9031,  'p3',  'Clerk', '2006.11.15'); 
insert into works_on values (29346, 'p1',  'Clerk', '2007.1.4');



Use Chapter6;
Select project_no, project_name, budget
from project;

Use Chapter6;
Select dept_no,dept_name, location
from department;

Use Chapter6;
Select dept_name,dept_no
From department
where location='Dallas';

Use Chapter6;
Select emp_no, project_no
From works_on
Where job='Manager';

Use Chapter6;
Select emp_lname,emp_fname
From employee
Where emp_no>=15000;

Use Chapter6;
Select emp_lname,emp_fname
From employee
Where emp_no!<30000;

Use Chapter6;
Select project_name
From project
Where budget*0.79>50000;

Use Chapter6;
Select project_name
From project
Where budget*3.3>350000;

Use Chapter6;
Select project_no,emp_no
From works_on
where project_no = 'p1'
Or project_no = 'p3';

Use Chapter6;
Select project_no,emp_no
From works_on
Where emp_no = '10102'
Or emp_no = '9031';

Use Chapter6;
Select emp_fname,Distinct emp_no
From employee
where emp_lname ='Moser';

Use Chapter6;
Select Distinct emp_fname
from employee
where emp_lname ='Moser';

Use Chapter6;
Select Distinct emp_fname
from employee
where emp_lname ='james';

Use Chapter6;
Select distinct project_no,emp_no
From works_on
where project_no = 'p1'

Use Chapter6;
select emp_no,emp_fname,emp_lname
from employee
where emp_no=25348 and emp_lname ='Smith'
Or emp_fname='Matthew' and dept_no='d1';

Use Chapter6;
select emp_no,emp_fname,emp_lname
from employee
where ((emp_no =25348 and emp_lname ='Smith')
Or emp_fname='Matthew') and dept_no = 'd1';

Use Chapter6;
select emp_no,emp_fname,emp_lname
from employee
where (emp_no=25348 and emp_lname ='Smith')
Or (emp_fname='Matthew' and dept_no='d1');

select emp_no,emp_fname,emp_lname
from employee
where ((emp_no =25348 and emp_lname ='Smith')
Or emp_fname='Matthew') and dept_no = 'd1';

Use Chapter6;
Select emp_fname,emp_lname
From employee
where Not dept_no='d1';

Use Chapter6;
Select emp_no,dept_no
From employee
where not emp_lname='Smith';






























Use Chapter6;
Select emp_no
From works_on
where project_no = 'p1'
and project_no = 'p2';
