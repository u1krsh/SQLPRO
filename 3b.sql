use exam;

create table Student1(
RollNo INT,
name varchar(20),
dept varchar(20),
marks int);

INSERT INTO Student1 VALUES
(1, 'Amit', 'CSE', 85),
(2, 'Riya', 'CSE', 90),
(3, 'Kiran', 'ECE', 78),
(4, 'Sneha', 'ECE', 88),
(5, 'Rahul', 'MECH', 70);

select count(marks) as count from Student1;
select sum(marks) as sum from Student1;
select avg(marks) as avg from Student1;
select max(marks) as max from Student1;
select min(marks) as min from Student1;
select dept, count(*) as count from Student1 GROUP BY dept;
select dept, sum(marks) as marks from Student1 GROUP BY dept;
select dept, avg(marks) as avg from Student1 GROUP by dept;
select dept, avg(marks) as avf from Student1 GROUP by dept HAVING avg(marks)> 80;
select dept, sum(marks) as sum, avg(marks) as avg, max(marks) as max from Student1 group by dept;
