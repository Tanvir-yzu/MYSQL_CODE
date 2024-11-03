use dummydb;

select * from employees;

select * from employees
where salary < ( select salary from employees  -- this id sub qure
                 where employee_id = 144);

select * from employees
where salary = ( select max(salary) from employees);

select department_id from departments
where department_name = 'marketing';


select * from employees
where department_id = (select department_id from departments
                       where department_name = 'marketing');
                       
                       
 select max(salary) from employees
where department_id = (select department_id from departments
                       where department_name = 'marketing');        

 select count(*) from employees
where department_id = (select department_id from departments
                       where department_name = 'it');

select * from employees 
where job_id = ( select job_id from jobs 
                 where job_title = 'programmer');


select distinct salary from employees
order by salary desc
limit 1,1;

select * from employees 
where salary = (select max(salary) from employees 
                   where salary < (select max(salary) from employees)
                   );

select * from employees as emp
 where salary > (select salary 
                 from employees as mgr
                 where emp.manager_id = mgr.employee_id);


select * from jobs;

select * from employees as emp
 where job_id = (select job_id 
                 from employees as mgr
                 where emp.manager_id = mgr.employee_id);


with temp as 
(
select * 
from employees
limit 5
)

select * 
from temp;

WITH avgit AS (
    SELECT AVG(salary) AS avg_it_salary 
    FROM employees
    WHERE department_id = 60 -- IT
),
avgmark AS (
    SELECT AVG(salary) AS avg_mark_salary
    FROM employees
    WHERE department_id = 20 -- Marketing
)
select * from employees 
JOIN avgit ON 1=1  -- Cross join to make avg_it_salary accessible
JOIN avgmark ON 1=1  -- Cross join to make avg_mark_salary accessible
where salary > avgit.avg_it_salary  and  salary < avgmark.avg_mark_salary;
















                       