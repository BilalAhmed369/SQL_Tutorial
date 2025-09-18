# Where clause:  

select *
from employee_demographics;

select *
from employee_demographics
where first_name = 'Tom'
;

select *
from employee_demographics
where age > 40
;


select *
from employee_demographics
where gender = 'female'
;


# AND, OR, NOT     Logicaal Operators

select *
from employee_demographics
where birth_date > '1982-06-06'
and gender = 'male'
;

select *
from employee_demographics
where birth_date > '1982-06-06'
or gender = 'male'
;

select *
from employee_demographics
where birth_date > '1982-06-06'
or not gender = 'male'
;

#  Like Statement
#  uses (%  _)

select *
from employee_demographics
where first_name like 'don%'
;
