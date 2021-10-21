/* Write your MySQL/T-SQL query statement below */
UPDATE Salary
SET sex = 
CASE WHEN sex = 'm' THEN 'f'
ELSE 'm' END 
