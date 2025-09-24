# window funuctions

select gender, avg(salary) as avg_salary
from employee_demographics dem
join employee_salary sel
	on dem.employee_id = sel.employee_id
group by gender;


select gender, avg(salary) over (partition by gender)
from employee_demographics dem
join employee_salary sel
	on dem.employee_id = sel.employee_id;
    
    
select dem.first_name, dem.last_name, gender, avg(salary) over (partition by gender)
from employee_demographics dem
join employee_salary sel
	on dem.employee_id = sel.employee_id;
    
     
select dem.first_name, dem.last_name, gender, 
sum(salary) over (partition by gender order by dem.employee_id)
from employee_demographics dem
join employee_salary sel
	on dem.employee_id = sel.employee_id; 
    
    
select dem.employee_id, dem.first_name, dem.last_name, gender, salary,
row_number() over(order by salary asc) as row_num,
rank() over(order by salary asc) as rank_num,
dense_rank() over(order by salary asc) as rank_num
from employee_demographics dem
join employee_salary sel
	on dem.employee_id = sel.employee_id;     
    
    
    
    
    
    