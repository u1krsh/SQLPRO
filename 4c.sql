select * from Employee;


revoke insert on CompanyDb.Employee to 'user1'@'localhost';
flush privileges;