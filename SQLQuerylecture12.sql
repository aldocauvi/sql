Use Chapter7;
Select emp_no
From employee
Where dept_no='d3'
Intersect
Select emp_no
From works_on
Where enter_date<'5/1/2007';

Use Chapter7;
Select emp_no
From employee
Where dept_no='d2'
Intersect
Select emp_no
From works_on
Where enter_date>'1/1/2005';

Use Chapter7;
Select emp_no
From employee
Where dept_no='d1'
Except
Select emp_no
From works_on
Where enter_date>'5/1/2007';

Use Chapter7;
Select emp_no
From employee
Where dept_no='d3'
Except
Select emp_no
From works_on
Where enter_date<'1/1/2008';

Use Chapter7;
create table #project_temp
(project_no Char(4) Not null,
project_name Char(25) not null);

/*I would like you to create an additional table in the same database and to be more creative when it comes to the elements of the table. 
For instance, I would like the table to have variables (fields or columns,is the same), that can accept NULL values.*/

Use Chapter7;
create table #employee_temp
(Employee_no Char(4) null,
Employee_fname Char(15)  null,
Employee_lname char (15) null,
Employee_hobby char (20) null);

Use Chapter7;
Select emp_no,emp_lname
into #project_temp1
 from employee;

 select *from #project_temp1;

 select *from #project_temp;

 create database Project;
Create table students
(student_no Char(10) Not null,
student_fname Char(25) not null,
student_lname Char(25) not null,
student_major Char (20) null);
insert into students values (20001,'James','Perez','Physics');
insert into students values (20002,'Walter','Spamer','Computer');
insert into students values (20003,'Christian','Dominguez','Relations');
insert into students values (20004,'Gaby','Alvarez','Medicine');

 
use project;
create table students 
(student_no Char(10) Not null,
student_fname Char(25) not null,
student_lname Char(25) not null,
student_major Char (20) null);
insert into students values (20001,'James','Perez','Physics');
insert into students values (20002,'Walter','Spamer','Computer');
insert into students values (20003,'Christian','Dominguez','Relations');
insert into students values (20004,'Gaby','Alvarez','Medicine');

use project;	
ALTER TABLE students ALTER COLUMN student_no VARCHAR (10);

Use Chapter7;
create table #employee_temp1
(Employee_id VARCHAR (20) NULL,
Employee_fname VARCHAR (20)  NULL,
Employee_lname VARCHAR (20) NULL,
Username VARCHAR (20) NULL,
Email TEXT,
HOBBY VARCHAR (20) NULL,
EMP_DOB DATE,
EMP_STARTDATE DATE);


 select * from #project_temp1;

 use project;
 SELECT* FROM students;

 use project;	
ALTER TABLE students ALTER COLUMN student_fname VARCHAR (20);
ALTER TABLE students ALTER COLUMN student_lname VARCHAR (20);
ALTER TABLE students ALTER COLUMN student_major VARCHAR (20);