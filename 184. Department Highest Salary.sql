# Write your MySQL query statement below

SELECT d.Name AS Department, Employee , SALARY From (  
select a.departmentId, a.Salary, e.Name Employee from (
SELECT DEPARTMENTiD, MAX(Salary) Salary
FROM employee 
GROUP BY DepartmentId)a
INNER JOIN EMPLOYEE e 
ON A.dEPARTMENTid = e.departmentid
and a.salary = e.salary)b
LEFT JOIN Department d 
on b.DepartmentId = d.Id 

# Runtime: 475 ms, faster than 97.15% of MySQL online submissions for Department Highest Salary.