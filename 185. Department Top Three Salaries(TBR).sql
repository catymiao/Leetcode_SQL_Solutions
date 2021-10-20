/* Write your T-SQL query statement below */
/* My SQL only */

SELECT Department.name AS Department, Employee, Salary FROM (
SELECT Employee, Salary, DepartmentId FROM (
SELECT Employee.Name AS Employee, Salary, DepartmentId, Dense_Rank() OVER
(PARTITION by DepartmentId order by Salary DESC) AS Rank 
 FROM Employee )a
 WHERE Rank<=3)b
 INNER JOIN Department 
 ON b.DepartmentId = Department.Id