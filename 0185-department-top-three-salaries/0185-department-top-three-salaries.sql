# Write your MySQL query statement below
with highranked as (
        select
        d.name as Department,
        e.name as Employee, 
        e.salary as Salary,
        DENSE_RANK() over(partition by e.departmentId order by e.salary desc) as salary_ranked
    from Employee e
    inner join Department d
    on e.departmentId=d.id
)
select Department, Employee, Salary
from  highranked
where salary_ranked<=3;