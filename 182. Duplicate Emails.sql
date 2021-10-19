# Write your MySQL query statement below
SELECT Email
FROM person 
GROUP BY Email 
HAVING COUNT(id)>1 