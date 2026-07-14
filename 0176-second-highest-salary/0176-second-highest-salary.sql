# Write your MySQL query statement below
select max(salary) as secondHighestsalary from Employee
where salary <(select max(salary) from Employee);