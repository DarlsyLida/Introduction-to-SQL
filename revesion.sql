create database revision;
use revision;


create table employee(
employeeid int,
firstname varchar (200),
lastname varchar (200),
hiredate date
);

create table Students(
studentid int primary key,
firstname varchar (200),
lastname varchar (200),
admissiondate date
);

create table subjects(
subjectCode int Primary key,
studentid int,
subjectname varchar (32)
);
alter table subjects drop column studentid;

alter table Students add column subjectCode int;

select * from employee;
alter table employee add column salary int;
INSERT INTO STUDENTS (STUDENTID,FIRSTNAME,LASTNAME,SUBJECTCODE)VALUES
(1,'EDWIN','NTABO',101),
(2,'JOHN','OTIENO',102);
INSERT INTO STUDENTS(STUDENTID,FIRSTNAME,SUBJEemployeeCTCODE)VALUES
(103,104,105);

update STUDENTS SET LASTNAME="NTABO"WHERE STUDENTID=1;
insert into employee(employeeid,firstname,lastname,hiredate,salary)values
(1001,"edwin","okoth","2024/12/12",4444),
(1002,"mary","wanja","2020/12/10",233),
(1000,"luca","owuor","1999/12/12",100),
(1003,"jne","apondi","2021/12/12",6000),
(1004,"lucy","joan","2021/12/11",500);

insert into subjects(subjectCode,subjectName)values
(101,"english"),
(102,"kiswahili"),
(121,"maths"),
(231,"physics"),
(233,"chemistry");

SELECT SUM(Salary) AS TotalSalary
FROM Employee;
SELECT MAX(Salary) AS TotalSalary
FROM Employee;

select subjectcode, count(*) as studentCount
from students 
group by subjectCode;

select firstname,lastname
FROM Employee
WHERE Salary > 500;

select manufacturer, count(*) as car_salescount
from car_sales
group by manufacturer
having car_salescount > 4;

select students.lastname, subjects.subjectcode
from students
inner join subjects on students.subjectcode = subjects.subjectcode;

select * from students
where firstname like '%j%';

select*
from students
where subjectcode=(select max(subjectcode)
from subjects
);
select students.studentid,subjects.subjectcode
from students
left join subjects on students.studentid=subjects.subjectcode;

select * from students;

select * from students
where subjectcode between 101 and 105;


