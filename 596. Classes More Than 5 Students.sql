/* Write your T-SQL query statement below */
/* MySQL did not accept */


SELECT class 
FROM courses 
GROUP BY class 
HAVING COUNT(DISTINCT student) >= 5
