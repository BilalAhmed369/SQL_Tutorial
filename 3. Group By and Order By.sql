# Group By

select gender
from employee_demographics
group by gender
;


select gender, avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender
;

# Order by

select *
from employee_demographics
order by gender, birth_date
;


select *
from employee_demographics
order by 5, 4  # can use colounm numbers instead names but not reccomended
;







