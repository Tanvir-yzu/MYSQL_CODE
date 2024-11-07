use dummydb;

select * from employees;

select * from departments; 
-- inner join start --
select e.first_name,e.last_name,e.salary, d.department_name
from employees as e
inner join departments as d
on e.department_id = d.department_id;
-- inner join end --

-- left join start --
select e.first_name,e.last_name,e.salary, d.department_name
from employees as e
left join departments as d
on e.department_id = d.department_id;
-- left join end --

-- right join start --
select e.first_name,e.last_name,e.salary, d.department_name
from employees as e
right join departments as d
on e.department_id = d.department_id;
-- right join end --

-- cross join start --
SELECT e.first_name, d.department_name,e.department_id
FROM employees as e
CROSS JOIN departments as d
on e.department_id = d.department_id;
-- cross join end --

-- question 1 : 
-- Explain the difference between Primary Key and Foreign Key in SQL?

-- ans : The primary key is a unique identifier within its table, whereas a foreign key is a reference in one table to a primary key in another. Primary keys enforce uniqueness within their table, ensuring each record is identifiable. Foreign keys, however, are used to establish and navigate relationships between tables.



-- question 2 : 

-- What is a Self Join? Provide an example using the employees table to list employees who share the same manager ID, showing only their first names and manager IDs.

-- ans : A SQL SELF JOIN is a type of join operation where a table is joined with itself. It allows you to combine data from a single table by creating a virtual copy of the table and establishing relationships between the original and virtual tables. Self joins are used to compare or combine data within the same table, often by creating relationships between rows within the table.

SELECT e.employee_id, e.first_name, m.first_name 
FROM employees AS e
LEFT JOIN employees AS m ON e.manager_id = m.employee_id;