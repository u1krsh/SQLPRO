CREATE DATABASE CompanyDB;
use CompanyDB;

create table Employee(
emp_id int primary key,
name varchar(50),
dept varchar(50),
salary int,
doj date);

INSERT INTO Employee VALUES
(1, 'Anil', 'HR', 30000, '2021-06-12'),
(2, 'Sunita', 'IT', 45000, '2020-03-18'),
(3, 'Ravi', 'Finance', 40000, '2019-11-25'),
(4, 'Meena', 'IT', 48000, '2022-01-10'),
(5, 'Karthik', 'Sales', 35000, '2023-03-15');

select * from Employee;

#create employee

grant usage on *.* to 'root'@'localhost' identified by 'user123';

grant select on CompanyDB.Employee to 'user1'@'localhost';
flush privileges; 

show grants for 'user1'@'localhost';