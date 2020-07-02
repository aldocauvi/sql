
USE model_2;

CREATE TABLE Student(
Student_ID INT PRIMARY KEY,
Student_fname char (20) NOT NULL,
Student_lname char(20) NOT NULL,
Student_email XML NULL,
Major char(20) not null,
GPA dec (10,2));

INSERT INTO Student(Student_id,
student_fname, student_lname, student_email, Major, GPA)
VALUES (2020100,'William','Wallace','arod@mymdc.net','Data science','4.00');
INSERT INTO Student VALUES(2020101,'Christian','Dominguez','cdom@mymdc.net','Data science','3.5');
INSERT INTO Student VALUES(2020102,'Adrian','Luna','alun@mymdc.net','Data science','3.4');
INSERT INTO Student VALUES(2020103,'Renzo','Nunez','rnun@mymdc.net','Data science','4.2');
INSERT INTO Student VALUES(2020104,'Alan','Rubina','arub@mymdc.net','Data science','5.00');
INSERT INTO Student VALUES(2020105,'Aldo','Cauvi','acau@mymdc.net','Music','2.5');
INSERT INTO Student VALUES(2020106,'Gaby','Alvarez','galv@mymdc.net','Music','2.8');
INSERT INTO Student VALUES(2020107,'Ricky','Trevitazo','rtre@mymdc.net','Data science','3.9');
INSERT INTO Student VALUES(2020108,'Corona','Virus','cvir@mymdc.net','Health informatics','4.1');
INSERT INTO Student VALUES(2020109,'Donald','Trumpet','dtru@mymdc.net','Finance','4.7');

select * from student;

CREATE TABLE Employee(
Emp_id INT PRIMARY KEY,
Emp_fname char(20) NOT NULL,
Emp_lname char(20) NOT NULL,
Department char(20));

INSERT INTO Employee(Emp_ID, Emp_fname, Emp_lname, Department)
VALUES(1001,'Norge','Pena','Data Science');
INSERT INTO Employee VALUES(1002,'Cristiano','Messi','Business');
INSERT INTO Employee VALUES(1003,'Lionel','Ronaldo','Psychology');
INSERT INTO Employee VALUES(1004,'Brando','Steinbach','Marketing');
INSERT INTO Employee VALUES(1005,'Andrea','Sandoval','Architecture');
INSERT INTO Employee VALUES(1006,'Barbara','Candice','Computer science');
INSERT INTO Employee VALUES(1007,'Oliver','Ian','Health Informatics');
INSERT INTO Employee VALUES(1008,'Lupe','Andrea','Finance');
INSERT INTO Employee VALUES(1009,'Zambo','Cavero','Music');
INSERT INTO Employee VALUES(1010,'Oscar','Avilez','Music');

Select * from employee;

CREATE TABLE Information(
Reg_ID INT PRIMARY KEY,
Student_ID INT FOREIGN KEY REFERENCES Student(Student_ID),
Term char(20) not null);

INSERT INTO Information(Reg_ID,Student_ID, term)
VALUES(20201,2020100,'Spring');
INSERT INTO Information VALUES(20202,2020101,'Summer');
INSERT INTO Information VALUES(20203,2020102,'Fall');
INSERT INTO Information VALUES(20204,2020103,'Spring');
INSERT INTO Information VALUES(20205,2020104,'Fall');
INSERT INTO Information VALUES(20206,2020105,'Summer');
INSERT INTO Information VALUES(20207,2020106,'Winter');
INSERT INTO Information VALUES(20208,2020107,'Winter');
INSERT INTO Information VALUES(20209,2020108,'Summer');
INSERT INTO Information VALUES(20210,2020109,'Spring');

SELECT*FROM Information;

Use model_2;
GO
Select student_ID, Student_fname, Student_lname, student_email, major
from Student
where major='Data science';
GO

Use  model_2
Go
Select emp_ID, emp_fname, emp_lname
from employee
where emp_ID >1005
GO

Use model_2;
Select Reg_ID, Student_ID, Term
from Information
where term = 'spring'
or term = 'Summer';

use model_2;
alter table student
add GPA char (3);

Select student_id, GPA, GPA *100 as unweighted_GPA
from student
where GPA >3;

use model_2;
create table #Student_inf
(Student_ID INT FOREIGN KEY REFERENCES Student(Student_ID),
Address char (20) null,
Zip_code char (10)null );

use model_2
GO
select student_id, major
into #student_details
from student
GO