# MySQL 
SELECT 
   CASE 
       WHEN MOD(id,2) !=0 AND id = tc THEN id 
       WHEN MOD(id,2) !=0 THEN id + 1
       ELSE id - 1 END AS id, student from seat, 
       (select count(*) as tc from seat) total_counts
       ORDER BY id 
	  
/* Write your T-SQL query statement below */
SELECT 
   CASE 
       WHEN id%2 !=0 AND id = tc THEN id 
       WHEN id%2 !=0 THEN id + 1
       ELSE id - 1 END AS id, student 
       FROM seat, 
       (select count(*) as tc from seat) total_counts
       ORDER BY id