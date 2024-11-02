use dummydb;

select * from countries;

select * from employees
where DEPARTMENT_ID = 60 and salary >=9000;

select first_name,salary, salary+10000  from employees
where DEPARTMENT_ID = 60;

select distinct job_id from employees; -- aki valu bar bar na dakano 'distinct'

select *
from employees
order by salary asc; -- accasding and dissasing
select *
from employees
limit 4,5;    -- 1st 4 ta bad and show after 5 value  --


select *
from employees
order by salary desc
limit 5 ,4;


select *
from employees
where last_name like '%rr%';  


select first_name , salary, salary+10000 as increase_salary
from employees;   --   change name by 'as'

