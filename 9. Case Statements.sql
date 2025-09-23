#  Case statements

select first_name,
last_name,
age,
case
	when age <= 35 then 'Young'
    when age between 36 and 60 then 'old'
    when age between 61 and 100 then 'older'
end as age_bracket
from employee_demographics;


-- pay increase and bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10%

select first_name, last_name, salary,
case
	when salary < 50000 then salary + (salary * 0.05)
    when salary > 50000 then salary + (salary * 0.07)
	when salary = 50000 then salary + (salary * 0.10)
end as new_salary,
case
	when dept_id = 6 then salary + (salary * 0.10)
end as bonus
from employee_salary;

select *
from employee_salary;
select *
from parks_departments
