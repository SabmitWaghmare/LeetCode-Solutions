# Write your MySQL query statement below
-- select * from person
-- inner join Column Name on 
select p.firstName, p.lastName, A.city, A.state
from Person p
left join Address A
on p.personId=A.personId
;