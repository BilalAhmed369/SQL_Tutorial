# Having vs Where

select gender, avg(age)
from employee_demographics
group by gender
having avg(age)
;

select occupation, avg(salary)
from employee_salary
where occupation like '%nurse%'
group by occupation
;

select occupation, avg(salary)
from employee_salary
where occupation like '%manager%'
group by occupation
;


select occupation, avg(salary)
from employee_salary
where occupation like '%manager%'
group by occupation
having avg(salary) > 55000
;
