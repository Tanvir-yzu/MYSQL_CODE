create database StudentData;

use StudentData;

create table Student
(
Roll char(4) primary key,
Name varchar(50) not null,
Email varchar(60) unique,
Address varchar(255),
Age int check(Age >10)
);

create table Library
(
Book varchar(50),
Roll char(4),
foreign key(Roll) references Student(Roll)

);

insert into Student(Roll,Name,Email,Address,Age)
values(
'0002','Tanvirs','Tanvi12r@gmail.com','jashore',12
);

create table Course
(
CourseName varchar(10),
University varchar(10),
Credit int,
primary key(CourseName,University)

);

select * 
from Student;


select Name 
from Student;

select *
from Student 
where Name = 'Tanvir';



select Email
from student
where Roll = '0001';



select 10+50;

select  







