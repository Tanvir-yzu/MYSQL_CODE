
create database programmongFue;
USE programmongFuel;

-- create table --
create table Student(

	Roll CHAR(4) PRIMARY KEY,
    StuName varchar(50),
    Marks double
    );
    -- add data --
    INSERT INTO Student 
    (Roll,StuName,Marks) values(1,'Tanvir',90);
    -- update data --
    -- safe mood on --
    SET SQL_SAFE_UPDATES = 0;
    update Student
    set StuName = 'Tanvir Islam'
    where Roll = 1;
    -- safe mood off --
    SET SQL_SAFE_UPDATES = 1;
    
    -- delete data --
     SET SQL_SAFE_UPDATES = 0;
    delete from Student
    where Roll = 1
	
   -- drop table Student;-- 
   
   