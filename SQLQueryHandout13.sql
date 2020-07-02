Use Chapter7;
select employee.*,department.*
from employee Inner join department
on employee.dept_no=department.dept_no;

Use Chapter7;
SELECT employee.*,department.*
from employee, department
Where employee.dept_no = department.dept_no;

use Chapter7;
select emp_no,project.project_no,job,enter_date,project_name,budget
from works_on join project
on project.project_no=works_on.project_no
where project_name='Apollo'
order by 4;

use chapter7;
select works_on.emp_no, emp_fname, emp_lname,job
From employee join works_on
on employee.emp_no = works_on.emp_no
where job = null ;

use chapter7;
select works_on.emp_no, emp_fname, emp_lname, job
From employee, works_on
where employee.emp_no = works_on.emp_no
and job = NULL;



Use Chapter7;
select emp_fname,emp_lname
from employee join works_on
on employee.emp_no=works_on.emp_no
where enter_date <'06.30.2007';

I/*nstead of the first and last name, now I would like you to obtain the department number 
for every employee whose project was entered after the end of the 2007 fiscal year*/
use chapter7;
select dept_no
from employee join works_on
on employee.emp_no =  works_on.emp_no
where enter_date > '12.31.2007';

Use Chapter7;
select emp_lname
from works_on join employee on works_on.emp_no=employee.emp_no
join department on employee.dept_no=department.dept_no
and location ='Dallas'
and job ='clerk';

--If necessary, run a query to obtain full details of these employees as well as the departments they are part of.

Use Chapter7;
select employee.emp_no, emp_fname, emp_lname, department.dept_no
from works_on join employee on works_on.emp_no=employee.emp_no
join department on employee.dept_no=department.dept_no
and location ='Dallas'
and job ='clerk';

Use Chapter7;
select  project_name
from department join employee
on department.dept_no=employee.dept_no
join works_on on employee.emp_no=works_on.emp_no
join project on works_on.project_no=project.project_no
where dept_name='Research'; 

Use Chapter7;
select DISTINCT project_name
from department join employee
on department.dept_no=employee.dept_no
join works_on on employee.emp_no=works_on.emp_no
join project on works_on.project_no=project.project_no
where dept_name='Research'; 

use Chapter7;
select project.*,works_on.*
from project cross join works_on;

use chapter7;
select employee.*,department.*
from employee CROSS JOIN department;

Use Chapter7;
select employee_enh.*, department.location
from employee_enh join department
on domicile <>  location;

Use Chapter7;
select employee_enh.*, department.location
from employee_enh join department
on domicile =  location;

use Chapter7;
select employee_enh.domicile,department.*
from employee_enh right outer join department
on domicile <>location;

use Chapter7;
select employee_enh.domicile,department.*
from employee_enh right outer join department
on domicile = location;

Use Chapter7;
select emp_fname,emp_lname,domicile,location
from employee_enh join department
on location>domicile;

Use Chapter7;
select emp_fname,emp_lname,domicile,location
from employee_enh join department
on domicile < location;

Use Chapter7;
create table seattle_dept
(dept_no Char(2) not null,
dept_name char (15) not null);

insert into seattle_dept (dept_no,dept_name)
select dept_no,dept_name
from department
where location ='Seattle';

select *from seattle_dept;

Use Chapter7;
create table project_budget
(project_no char (2) not null,
project_name char (15) not null);

insert into project_budget(project_no,project_name)
select project_no,project_name
from project
where budget>80000;

select * from project_budget;

Use Chapter7;
create table marketing_dept
(dept_no char (2) not null,
dept_name char (15) not null);

insert into marketing_dept(dept_no,dept_name)
select dept_no,dept_name
from department
where location = 'Dallas';

select * from project_budget;

use Chapter7;
create table Analyst_t
(emp_no int not null,
project_no char(4) not null,
enter_date Date);
Insert into Analyst_t(emp_no,project_no,enter_date)
select emp_no,project_no,enter_date
from works_on
where job='Analyst'
and emp_no<10000;
select *from Analyst_t;

use Chapter7;
create table Manager_t
(emp_no int not null,
project_no char(4) not null,
enter_date Date);
Insert into Manager_t(emp_no,project_no,enter_date)
select emp_no,project_no,enter_date
from works_on
where job='Manager'
and emp_no<20000;
select *from Manager_t;

