create database EmployeeData;
use EmployeeData;

create table Employee
(
EmpId int primary key,
EmpName varchar(50) not null,
JoiningYear year not null ,
Birthday date not null check(Birthday < '2000-01-01'),
Designation varchar(50) not null,
Salary decimal(10,2) not null check(Salary>=0)
);

/*
CREATE TABLE Employee (
    EmpId INT NOT NULL,
    EmpName VARCHAR(100) NOT NULL,
    JoiningYear YEAR NOT NULL CHECK (JoiningYear >= 1900),
    Birthday DATE NOT NULL CHECK (Birthday < '2000-01-01'),
    Designation VARCHAR(50) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL CHECK (Salary >= 0),
    PRIMARY KEY (EmpId, Designation) -- Composite primary key constraint
);

*/

INSERT INTO Employee (EmpId, EmpName, JoiningYear, Birthday, Designation, Salary) VALUES
(1, 'Alice Smith', 2021, '1995-04-15', 'Software Engineer', 75000.00),
(2, 'Bob Johnson', 2020, '1988-08-20', 'Product Manager', 85000.00),
(3, 'Charlie Brown', 2019, '1992-11-30', 'Data Analyst', 60000.00),
(4, 'Diana Prince', 2018, '1990-03-25', 'Designer', 70000.00),
(5, 'Edward Elric', 2022, '1996-07-15', 'Developer', 78000.00),
(6, 'Fiona Green', 2021, '1985-05-05', 'HR Manager', 82000.00);

INSERT INTO Employee (EmpId, EmpName, JoiningYear, Birthday, Designation, Salary) VALUES
(7, 'George Black', 2023, '1984-12-01', 'Network Engineer', 65000.00),
(8, 'Hannah White', 2020, '1993-03-22', 'Database Admin', 72000.00),
(9, 'Ian Gray', 2017, '1982-06-18', 'Data Scientist', 90000.00),
(10, 'Jack Brown', 2019, '1994-09-10', 'Backend Developer', 71000.00),
(11, 'Kate Silver', 2021, '1988-07-15', 'UX Designer', 68000.00),
(12, 'Liam Red', 2023, '1991-04-28', 'Frontend Developer', 67000.00),
(13, 'Megan Rose', 2016, '1985-02-17', 'Project Manager', 93000.00),
(14, 'Nina Purple', 2018, '1990-11-03', 'QA Engineer', 62000.00),
(15, 'Oliver Blue', 2022, '1995-08-30', 'Mobile Developer', 76000.00),
(16, 'Paula Orange', 2019, '1992-01-25', 'Content Writer', 58000.00),
(17, 'Quincy Violet', 2020, '1993-05-10', 'SEO Specialist', 64000.00),
(18, 'Rachel Gold', 2021, '1987-07-21', 'Product Designer', 69000.00),
(19, 'Sam Gray', 2017, '1989-09-12', 'Web Developer', 63000.00),
(20, 'Tom Silver', 2023, '1995-12-05', 'System Analyst', 74000.00),
(21, 'Uma Teal', 2021, '1996-03-08', 'Business Analyst', 81000.00),
(22, 'Victor Tan', 2020, '1994-05-22', 'Machine Learning Engineer', 92000.00),
(23, 'Wendy Mint', 2019, '1993-10-02', 'Graphic Designer', 71000.00),
(24, 'Xavier Brown', 2018, '1990-11-27', 'Sales Manager', 88000.00),
(25, 'Yara Black', 2022, '1989-08-14', 'Technical Writer', 60000.00),
(26, 'Zane Green', 2019, '1987-04-04', 'Cybersecurity Analyst', 85000.00),
(27, 'Aiden White', 2021, '1985-12-09', 'Product Owner', 95000.00),
(28, 'Bella Silver', 2020, '1994-03-19', 'Marketing Specialist', 66000.00),
(29, 'Carlos Blue', 2023, '1989-06-15', 'Cloud Engineer', 93000.00),
(30, 'Daisy Gray', 2021, '1995-02-25', 'Full Stack Developer', 78000.00),
(31, 'Evan Black', 2022, '1988-10-14', 'DevOps Engineer', 85000.00),
(32, 'Faith Purple', 2020, '1991-01-17', 'Content Strategist', 62000.00),
(33, 'Gina Green', 2018, '1990-07-03', 'Account Manager', 68000.00),
(34, 'Harry Red', 2021, '1995-11-18', 'Network Admin', 69000.00),
(35, 'Iris Mint', 2022, '1993-05-30', 'UI Developer', 75000.00),
(36, 'Jake Tan', 2019, '1987-04-12', 'Solutions Architect', 97000.00),
(37, 'Kara Gold', 2017, '1985-08-28', 'Data Engineer', 91000.00),
(38, 'Leo Brown', 2018, '1988-09-20', 'Compliance Officer', 72000.00),
(39, 'Maya Black', 2023, '1992-12-25', 'Scrum Master', 82000.00),
(40, 'Noah White', 2022, '1994-02-22', 'Recruiter', 63000.00),
(41, 'Olivia Green', 2019, '1989-11-11', 'Market Researcher', 68000.00),
(42, 'Paul Blue', 2021, '1986-05-06', 'Technical Consultant', 94000.00),
(43, 'Rita Silver', 2023, '1991-10-19', 'Operations Manager', 86000.00),
(44, 'Sophie Teal', 2020, '1989-07-24', 'Financial Analyst', 72000.00),
(45, 'Tyler Brown', 2018, '1995-09-05', 'Legal Advisor', 90000.00),
(46, 'Ursula Red', 2017, '1985-03-11', 'Customer Success Manager', 76000.00),
(47, 'Vincent Violet', 2019, '1993-06-13', 'Event Manager', 70000.00),
(48, 'Will Green', 2022, '1996-12-03', 'Data Architect', 99000.00),
(49, 'Xena Black', 2021, '1987-09-29', 'Machine Learning Scientist', 101000.00),
(50, 'Yasmin White', 2020, '1992-02-12', 'Chief Marketing Officer', 112000.00);


select *
from Employee;
/*
select *
from Employee limit 40,10; (limit,offset)
*/
select *
from Employee limit 40,10;

-- sum salary --

select sum(Salary) from Employee;

-- return all records where the JoiningYear is from 2010 to 2015, inclusive--
select * from Employee
where JoiningYear between 2010 and 2020;

/*
This query will return all employees with EmpName that includes "oph" anywhere in the name, such as "Joseph" or "Sophie".
*/

select * from Employee
where  EmpName like '%oph%';