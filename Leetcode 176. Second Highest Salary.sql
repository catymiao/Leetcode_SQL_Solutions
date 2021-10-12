-- Write your MySQL query statement below
SELECT IFNULL(
 (SELECT DISTINCT salary FROM employee
  ORDER BY salary DESC 
  LIMIT 1 OFFSET 1), null) AS SecondHighestSalary 