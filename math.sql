use dummydb;

select upper(first_name) from employees;

select cos(radians(90));

select pi();

select rand();


select max(salary) from employees;
select min(salary) from employees;
select avg(salary) from employees;


select count(salary) from employees;

select count(*) from employees;




select department_id, max(salary) from employees
group by department_id;

select department_id, min(salary) from employees
group by department_id;

select department_id, avg(salary) from employees
group by department_id;

select department_id,count(*) from employees
group by department_id;

select department_id, max(salary) as sel from employees
where department_id != 20
group by department_id
having   sel >5000 ;



COMMIT;


































































