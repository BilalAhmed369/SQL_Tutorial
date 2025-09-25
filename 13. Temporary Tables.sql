# Temporary Tables

create temporary table temp_table
(first_name varchar(20),
last_name varchar(20),
age int (99),
gender varchar(10)
);

insert into temp_table
values('Bilal', 'Ahmed', '23', 'male');

select *
from temp_table;


create temporary table salary_over_50k
select *
from employee_salary
where salary > 50000;

select *
from salary_over_50k;












