use Chapter7;
insert into employee_enh values
('32390','Andy','Young','Miami'),
('41012','James', 'Gordon','Boca'),
('43002', 'Glenn', 'Spencer','Miami');

SELECT* FROM employee_enh;

use chapter7;
alter table employee_enh
alter column dept_no char (5) not null;

use Chapter7;
insert into employee_enh values
('32390','Andy','Young','Miami'),
('41012','James', 'Gordon','Boca'),
('43002', 'Glenn', 'Spencer','Miami');



use Chapter7;
insert into employee values
('10103','Phil','Spencer','d1'),
('10104','Major', 'Nelson','d2');

use Chapter7;
insert into department values
('d1','CEO','Redmond'),
('d2','Game design','Seattle');

use Chapter7;
insert into project values
('p1','Anaconda','200000000'),
('p2','Scarlett','100000000');

use Chapter7;
insert into works_on values
('10103','p1','Manager','2010.10.1'),
('10104','p2','Designer','2011.08.01');

use Chapter7;
update works_on
set project_no='p1'
where emp_no='9031'
and project_no='p3';

SELECT *FROM works_on

use Chapter7;
update project
set budget = budget*18.80;

select *from project;

use Chapter7;
update project
set budget = budget*3.3;

select *from project;

use Chapter7;
update works_on
set job ='Revenue'
from works_on,project
where emp_no>'20000'
and works_on.project_no=project.project_no;

/*Create a similar query to set the department number to 'd1' for every person
with the last name Smith with the same ID number in the employee and works_on table.*/

Use Chapter7;
update department
set dept_no ='d1'
from department, employee
where emp_lname = 'Smith'
and department.dept_no=employee.dept_no;

use Chapter7;
delete from employee
where emp_no>29000;

use Chapter7;
delete from employee
where location='miami';

use Chapter7;
delete from employee_enh
where emp_no in
(select emp_no
from employee_enh
where emp_fname like '__h%');

select *from employee_enh;

use Chapter7;
delete from employee_enh
where emp_no in
(select emp_no
from employee_enh
where emp_fname like '%r');

delete from employee_enh
where emp_lname like '__h%';

Use Chapter7;
create table mytable2
(col1 varchar (1000),
col2 varchar (3000),
col3 varchar (3000),
col4 varchar (3000));
insert into mytable2
select replicate ('a',1000), Replicate ('b',3000),
replicate ('c',3000),REPLICATE ('d',3000);

