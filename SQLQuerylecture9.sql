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

USE Chapter7;
select emp_no,emp_fname,emp_lname
from employee
where emp_no in (29346,28559,25348);

USE CHAPTER7;
SELECT emp_no, emp_fname, emp_lname
from employee
where emp_no in (9031,18316)

USE Chapter7;
select distinct emp_no,project_no,job
from works_on
where job in ('Analyst', 'Manager');

USE Chapter7;
select emp_no,project_no,job
from works_on
where job in ('Analyst', 'Manager');


Use Chapter7;
select emp_fname,dept_no
from employee
where emp_no NOT in (25348,29346);

USE chapter7;
select project_no, project_name, budget
from project
where project_name NOT in ('Gemini','Mercury');

use Chapter7;
select emp_lname
from employee
where emp_no between 10000 and 20000;

USE chapter7;
select project_name, project_no, budget
from project
where budget between 50000 and 100000;

USE chapter7;
select project_name, project_no, budget
from project
where budget >=50000 and budget <=100000;

use Chapter7;
select emp_lname
from employee
where emp_no Not between 10000 and 20000;

USE Chapter7;
select emp_lname
from employee
order by emp_lname desc

use chapter7;
select emp_no,project_no
from works_on
where project_no ='p1'
and job is null;

USE chapter7;
SELECT enter_date, emp_no, project_no
from works_on
WHERE project_no ='p1'
and job is null;

use Chapter7;
select emp_no,ISNULL (job,'Job unknown') as task
from works_on
where project_no ='p1';

use Chapter7;
select emp_no,project_no, enter_date,ISNULL (job,'Job unknown') as task
from works_on
where job is null;

use Chapter7;
select emp_fname,emp_lname
from employee
where emp_lname like '__s%';

--Now create a query to find the employee first name and ID number for every employee with a 3 as the third character in the emp_no (ID).


use chapter7;
select emp_fname, emp_no
from employee
where emp_no like '__3%';

use Chapter7;
select dept_name,location
from department
where location like '_[A-D]%';

--Now run a similar query to obtain first name, last name, and employee number for every employee whose first character in the ID number is between 1 and 4.

use Chapter7;
select emp_fname, emp_lname,emp_no
from employee
where emp_no like '[1-4]%';

use Chapter7;
select emp_fname,emp_lname
from employee
where emp_lname like '[^BS]%';

--Can you obtain a table that displays the employee ID as well as the first and last name for every employee whose id is not in the range 1-5?

use Chapter7;
select emp_no,emp_fname,emp_lname
from employee
where emp_no like '[^1-5]%';

--Can you also create a query that displays the first and last name for every employee whose first name does not begin with the letters A,B,C or D?

use Chapter7;
select emp_fname,emp_lname
from employee
where emp_fname like '[^ABCD]%';

use Chapter7;
select emp_no,emp_fname,emp_lname
from employee
where emp_lname not like '%m';

--Now create a query to obtain full details of every employee whose first name does end with an s.

use Chapter7;
select emp_no,emp_fname,emp_lname, dept_no
from employee
where emp_fname like '%s';

--In addition, let us obtain the location and department name of every department whose name does end with a g.

use Chapter7;
select location, dept_name
from department
where dept_name like '%g';


 use Chapter7;
 select project_no,project_name
 from project
 where project_name LIKE '%[,]%';
 select project_no,project_name
 from project
 where project_name like '%!_%'escape'!';


 use Chapter7;
 select emp_no,project_no
 from works_on
 where emp_no LIKE '%[,]%';
 select job, enter_date
 from works_on
 where job like '%!_%'escape'!';

  use chapter7;
 select enter_date
 from works_on
 group by enter_date;

 --What if I asked you to obtain all project numbers from the table project.

  use chapter7;
 select project_no
 from project
 group by project_no;
 
  use chapter7;
 select emp_fname,emp_lname
 from employee
 group by emp_fname,emp_lname;

  --Now I would like you to query the table works_on and obtain project number and Job category only.

   use chapter7;
 select project_no, job
 from works_on
 group by project_no, job;