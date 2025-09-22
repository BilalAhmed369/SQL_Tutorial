#  String Functions

select length('Hello World');

select first_name, length(first_name)
from employee_demographics
order by 2; 

select upper('hello world');
select lower('HELLO WORLD');

select first_name, upper(first_name)
from employee_demographics;


select first_name, upper(first_name)
from employee_demographics;

select trim('   dire wolf    ');  -- trim used to remove blank spaces from the both sides

select rtrim('   dire wolf    ');  -- trim used to remove blank spaces from the right side

select ltrim('   dire wolf    ');  -- trim used to remove blank spaces from the left side

select first_name, 
left(first_name, 3),  -- gives only left 3 charcters 
left(first_name, 3),   -- gives only right 3 charcters
substring(first_name,4,3)  -- gives selected characters from selected start to selected end
birth_date,
substring(birth_date,6, 2) as birth_month
from employee_demographics;

select first_name, replace(first_name, 'a', 'z')  -- it replaces every 'a' with 'z'
from employee_demographics;


select locate('l', 'wolf');   -- locate index of the required character

select first_name, locate('an', first_name)  -- filter down the row and retrieve specified character
from employee_demographics;


select first_name, last_name,
concat(first_name, ' ',last_name) as full_name  -- use to concatinate two colunms
from  employee_demographics;
