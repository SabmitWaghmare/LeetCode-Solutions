with highest_salary as(
       select 
       d.name as Department,
       e.name as Employee,
       e.salary as Salary,
       dense_rank() over(partition by e.departmentId order by e.salary desc) as Top1
       from Employee e
       inner join Department d on
       e.departmentId=d.id
)
select Department, Employee, Salary
from highest_salary
where Top1=1;
