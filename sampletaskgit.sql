Select * from pizza_db

Select first_name,last_name,department_id,employee_id,salary,sum(salary) over (order by 
employee_id range between unbounded preceding and current row ) from employees

Select first_name,last_name,department_id,employee_id,salary,sum(salary) over (order by 
employee_id ) from employees
Select first_name,last_name,department_id,employee_id,salary,sum(salary) over (order by 
employee_id range between current row and unbounded following ) from employees


Select first_name,last_name,department_id,employee_id,salary,sum(salary) over (order by 
employee_id range between 2 preceding and 3 following   ) from employees

Select first_name,last_name,department_id,employee_id,salary ,Last_Value (salary) over (order by 
employee_id range between 1 preceding and  2 preceding ) from employees

Select first_name,last_name,department_id,employee_id,salary ,Last_Value (salary) over (order by 
employee_id range between current row and 3 following   ) from employees

Select first_name,last_name,department_id,employee_id,salary ,First_Value (salary) over (order by 
employee_id range between 1 preceding and 3 preceding  ) from employees


Select first_name,last_name,department_id,employee_id,commission_pct,First_Value (commission_pct IGNORE NULLS ) over (order by 
employee_id range between unbounded preceding and current row   ) from employees

Select first_name ,last_name,salary,sum(salary) over (order by employee_id  range between 2 preceding and 3 following) 
from employees

Select 
employee_id,
last_name,
salary -(lag(salary, 2,0) over(order by hire_date )+
lead(salary, 3,0)over(order by hire_date))/2 from employees

Select 
employee_id,
last_name,
(lag(salary, 2,0) over(order by employee_id)+ lead(salary, 3,0)over(order by employee_id))/2 from employees


Select last_name,hire_date,salary,
avg(salary) over(order by hire_date range between 2 preceding and 3 following ) from employees

Select last_name,employee_id,salary,
avg(salary) over(order by employee_id range between 2 preceding and 3 following ) from employees




Select first_name ,country_name,hire_date, FIRST_VALUE(hire_date) over (partition by country_name order by hire_date ) from employees e 
join departments d on e.department_id=d.department_id 
join locations l on l.location_id=d.location_id 
join countries c on l.country_id=c.country_id

Select first_name, hire_date, FIRST_VALUE(hire_date)over (partition by country_name ) from employees

--fghj




