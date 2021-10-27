/* Write your T-SQL query statement below */
# Write your MySQL query statement below

SELECT  NAME AS Customers FROM CUSTOMERS c
LEFT JOIN Orders o 
ON c.Id = o.CustomerId
where CustomerId IS NULL;
