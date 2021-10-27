# Write your MySQL query statement below

SELECT * FROM Cinema
where description <> 'boring'
and mod(id,2) <> 0 
order by rating DESC

/* Write your T-SQL query statement below */
SELECT * FROM Cinema
where description <> 'boring'
and id%2 <> 0 
order by rating DESC
