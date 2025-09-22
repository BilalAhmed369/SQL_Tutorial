#  Unions

select first_name, last_name
from employee_demographics
union distinct   -- to show unique values from the rows
select first_name, last_name
from employee_salary
;

select first_name, last_name
from employee_demographics
union all   -- to show all values from the rows
select first_name, last_name
from employee_salary
;

select first_name , last_name, 'Old' as label
from employee_demographics
where age > 50
union
select first_name, last_name, 'Highly Paid Employee' as lable
from employee_salary
where salary > 65000
;


select first_name , last_name, 'Old Man' as label
from employee_demographics
where age > 40 and gender = 'Male'
union
select first_name , last_name, 'Old Lady' as label
from employee_demographics
where age > 35  and gender = 'Female'
union
select first_name, last_name, 'Highly Paid Employee' as lable
from employee_salary
where salary > 55000
;


