create database Employeed;
use Employeed;

create table Employee(
EmployeeId int primary key,
EmployeeName varchar(250),
EmployeeSalary decimal(10,2),
JoiningDate date
);

insert into Employee(EmployeeId,EmployeeName,EmployeeSalary,JoiningDate)
values  
       (4, 'Jane Smith', 70000.00, '2024-02-20');
       
       
delete from   Employee
where      EmployeeId =1;