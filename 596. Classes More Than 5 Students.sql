/* Write your T-SQL query statement below */
/* MS SQL Server only */

SELECT class 
FROM courses 
GROUP BY class 
HAVING COUNT(DISTINCT student) >= 5