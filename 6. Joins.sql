# Joins

select *
from employee_demographics;

select *
from employee_salary;

	-- inner join
select *
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id
;

    -- pulling speccific colounms
select sal.employee_id, age, occupation
from employee_demographics as dem 
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id
;

      -- outer join
select *
from employee_demographics as dem 
right join employee_salary as sal
	on dem.employee_id = sal.employee_id
;

select *
from employee_demographics as dem 
left join employee_salary as sal
	on dem.employee_id = sal.employee_id
;


     -- self join
select *
from employee_salary emp1
join employee_salary emp2
	on emp1.employee_id = emp2.employee_id
;    



