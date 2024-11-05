use dummydb;
select employees.first_name , departments.department_name,employees.department_id
from employees,departments
where employees.department_id = departments.department_id;

-- used join mathod --
select employees.first_name , departments.department_name,employees.department_id
from employees join departments on employees.department_id = departments.department_id;

select employees.first_name , departments.department_name,employees.department_id
from employees join departments using( department_id );

-- used inner join mathod --
select employees.first_name , departments.department_name,employees.department_id
from employees 
inner join departments on employees.department_id = departments.department_id;

-- used left join mathod --
select employees.first_name , departments.department_name,employees.department_id
from employees 
left join departments on employees.department_id = departments.department_id;

-- used right join mathod --
select employees.first_name , departments.department_name,employees.department_id
from employees 
right join departments on employees.department_id = departments.department_id;

-- used cross join mathod --
select employees.first_name , departments.department_name,employees.department_id
from employees 
cross join departments on employees.department_id = departments.department_id;

-- used self join --
select m.first_name , e.first_name
from  employees as e 
join employees as m
on e.employee_id = m.manager_id;


select d.department_name 
from departments as d
left join employees as e
on d.department_id = e.department_id
where e.department_id is null;


select 
e.first_name,
 e.salary ,
 (select avg(salary) from employees where department_id = e.department_id)-e.salary
from employees as e
 join departments as d
 on e.department_id = d.department_id;


SELECT 
    e.first_name,
    e.salary,
    (SELECT AVG(salary) 
     FROM employees 
     WHERE department_id = e.department_id) - e.salary AS salary_difference
FROM employees AS e;

select d.department_name, min(e.salary), avg(e.salary)
from employees  as e
join departments as d on  e.department_id = d.department_id
group by d.department_name
having min(e.salary) > 8000


















































