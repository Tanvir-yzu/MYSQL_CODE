create database StudentReg;
use StudentReg;
-- Student Data --
create table Student (
student_id int primary key auto_increment,
first_name varchar(50) not null,
last_name varchar(50) not null,
date_0f_birth date,
gender enum('M','F') not null
);

INSERT INTO Student (first_name, last_name, date_0f_birth, gender) VALUES
('John', 'Doe', '2001-05-12', 'M'),
('Jane', 'Smith', '2000-08-23', 'F'),
('Michael', 'Johnson', '1999-03-14', 'M'),
('Emily', 'Davis', '2002-01-09', 'F'),
('Daniel', 'Brown', '2001-10-15', 'M'),
('Sophia', 'Wilson', '2000-06-27', 'F'),
('James', 'Taylor', '2002-09-05', 'M'),
('Olivia', 'Martinez', '1998-12-22', 'F'),
('William', 'Anderson', '1999-11-30', 'M'),
('Emma', 'Thomas', '2001-07-18', 'F'),
('Ethan', 'Jackson', '2000-04-04', 'M'),
('Isabella', 'White', '1999-05-25', 'F'),
('Alexander', 'Harris', '2002-10-12', 'M'),
('Ava', 'Clark', '2000-03-16', 'F'),
('Jacob', 'Lewis', '2001-11-05', 'M'),
('Mia', 'Robinson', '1998-07-21', 'F'),
('Matthew', 'Walker', '2002-02-28', 'M'),
('Charlotte', 'Hall', '2000-09-29', 'F'),
('Benjamin', 'Allen', '2001-01-17', 'M'),
('Amelia', 'Young', '1999-08-08', 'F');

select * from Student;



-- Library --
create table Library(
book_id int primary key auto_increment,
title varchar(100) not null,
author varchar(50) not null,
publication_year year,
student_id int,
foreign key(student_id) references Student(student_id)
);
INSERT INTO Library (title, author, publication_year, student_id) VALUES
('Introduction to Algorithms', 'Thomas H. Cormen', 2009, 1),
('Clean Code', 'Robert C. Martin', 2008, 2),
('The Pragmatic Programmer', 'Andrew Hunt', 1999, 3),
('Artificial Intelligence: A Modern Approach', 'Stuart Russell', 2010, 4),
('Design Patterns', 'Erich Gamma', 1994, 5),
('Database System Concepts', 'Abraham Silberschatz', 2011, 6),
('Operating System Concepts', 'Abraham Silberschatz', 2008, 7),
('Computer Networks', 'Andrew S. Tanenbaum', 2010, 8),
('Java: The Complete Reference', 'Herbert Schildt', 2018, 9),
('Python Crash Course', 'Eric Matthes', 2015, 10),
('The C++ Programming Language', 'Bjarne Stroustrup', 2013, 11),
('Head First Design Patterns', 'Eric Freeman', 2004, 12),
('You Don’t Know JS', 'Kyle Simpson', 2014, 13),
('Effective Java', 'Joshua Bloch', 2008, 14),
('Structure and Interpretation of Computer Programs', 'Harold Abelson', 1996, 15),
('Code Complete', 'Steve McConnell', 2004, 16),
('JavaScript: The Good Parts', 'Douglas Crockford', 2008, 17),
('Learning SQL', 'Alan Beaulieu', 2009, 18),
('Algorithms', 'Robert Sedgewick', 2011, 19),
('The Art of Computer Programming', 'Donald Knuth', 1997, 20);

select * from Library;

-- Fee --
create table Fee(
fee_id int primary key auto_increment,
student_id int not null,
amont decimal(10,2) not null,
status enum('paid','unpaid'),
foreign key (student_id) references Student (student_id)
);