select Distinct num As ConsecutiveNums
from(
    select 
    num,
    lead(num, 1) over(order by id) as next_num,
    lead(num, 2) over(order by id) as next_next_num
    from logs
) t
where num=next_num and num=next_next_num;