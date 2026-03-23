CREATE DATABASE BankDB;
USE BankDB;

create table Account(
acc_no int primary key,
Name Varchar(50) not null,
balance int check (balance >= 0),
acc_type varchar(20),
branch varchar(30)
);
INSERT INTO Account VALUES (1001, 'Ramesh', 5000, 'Savings', 'Chennai');
INSERT INTO Account VALUES (1002, 'Suresh', 7000, 'Savings', 'Madurai');
INSERT INTO Account VALUES (1003, 'Mahesh', 6000, 'Current', 'Coimbatore');
INSERT INTO Account VALUES (1004, 'Anitha', 9000, 'Savings', 'Trichy');
INSERT INTO Account VALUES (1005, 'Kavitha', 12000, 'Current', 'Salem');

select * from Account;

#transcation commit

start transaction;
update Account
set balance = balance -1800
where acc_no = 1001;

update Account
set balance = balance + 2000
where acc_no = 1002;

COMMIT;
select*from Account;

#transcation rollback

start transaction;

update Account
set Balance = Balance - 3000
where acc_no = 1001;

update Account 
set balance = balance - 2000
 where acc_no = 1005;
 
 rollback;
 select * from Account;


# transcation savepoint

start transaction;

update Account
set balance = balance -1000
where acc_no = 1005;

savepoint sp1;

update Account
set balance = balance+1000
where acc_no = 1001;
rollback to sp1;
commit;
select*from account;

#delete 

start transaction;
delete from Account 
where acc_no = 1004;
rollback;

#amount tranasfer 

start transaction;
update Account 
set balance = balance -1500
 where acc_no = 1002;
 
 update Account 
 set balance = balance+1500
 where acc_no = 1001;
 commit;
 select * from Account;
 

