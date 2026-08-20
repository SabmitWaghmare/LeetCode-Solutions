# Write your MySQL query statement below
select today.id
from Weather today
inner join weather yestarday
on datediff(today.recordDate, yestarday.recordDate)=1
where today.temperature>yestarday.temperature;