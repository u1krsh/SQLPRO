create table Student2(
	StudentID int primary key,
    StudentName varchar(50),
    dept int);
    
    create table Dept ( 
    dept int primary key,
    deptname varchar(50)
    );
    
    INSERT INTO Student2 VALUES
(1, 'Amit', 101),
(2, 'Neha', 102),
(3, 'Rahul', 103),
(4, 'Sneha', NULL);

INSERT INTO Dept VALUES
(101, 'Computer Science'),
(102, 'Electronics'),
(104, 'Mechanical');
#inner join
select StudentName, DeptName
from Student2
inner join Dept
on Student2.dept = Dept.dept;
#left join
select StudentName, DeptName
from Student2
left outer join Dept
on Student2.dept = Dept.dept;
#right join
select StudentName, DeptName
from Student2
right outer join DEpt
on Student2.dept =Dept.dept;
#full join
select StudentName, DeptName
from Student2
left join Dept
on Student2.dept = Dept.dept
UNION
select StudentName, DeptName
from Student2
right join Dept
on Student2.dept = Dept.dept;

# cross join

select StudentName, DeptName
from Student2
cross join Dept
on Student2.dept = Dept.dept;




