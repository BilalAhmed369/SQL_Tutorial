#  Limit and Aliasing

select *
from employee_salary
;

select *
from employee_salary
order by salary asc
limit 3;

#  Aliasing: mostly used to change the colounm name.

select gender, avg(age) as avg_age
from employee_demographics
group by gender
having avg_age
;




