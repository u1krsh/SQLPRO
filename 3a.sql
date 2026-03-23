create database exam;
use exam;
create table Students(
student_id INT PRIMARY KEY,
name VARCHAR(50),
dept VARCHAR(30),
marks int,
age int);

insert into Students VALUES (101, 'Arun', 'CSE', 85, 20),
(102, 'Bala', 'ECE', 72, 21),
(103, 'Chitra', 'CSE', 90, 22),
(104, 'Divya', 'IT', 65, 20),
(105, 'Eshan', 'ECE', 55, 23),
(106, 'Farah', 'CSE', 40, 21);

select * from Students WHERE dept = 'CSE';
select * from Students where marks > 75;
select * from Students where age <=21;
select * from Students where dept in ('CSE','IT');
select * from Students where name like 'D%';
select * from Students where dept not  in ('CSE');
select * from Students where marks is NOT NULL;
select * from Students where marks =72;
select * from Students where marks !=65;
select * from Students where age between 20 and 22;
select * from Students where dept != 'ECE';
select * from Students where name like '%a';
select * from Students where name like '%r%';
select * from Students where marks between 60 and 80;
select * from Students where dept = 'CSE' and marks < 80;
select * from Students where dept = 'ECE' and age <22;
select * from Students where marks <= 55;
select * from Students where name like 'E%';
select * from Students where marks in (40, 55, 65);
select * from Students where marks not between 60 and 90;
select * from Students where name not like 'A%';
select * from Students where age >(marks/4);




