# Write your MySQL query statement below
SELECT distinct l1.Num AS ConsecutiveNums 
from Logs l1
inner join logs l2 
on l1.id+1 = l2.id
inner join logs l3 
on l2.id+1 = l3.id
where l1.num = l2.num 
and l2.num = l3.num

# 373 ms, faster than 98.21% of MySQL online submissions for Consecutive Numbers.