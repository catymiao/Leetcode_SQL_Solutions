# Write your MySQL/T-SQL query statement below

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


/* Write your T-SQL query statement below */
SELECT department, employee, salary FROM (
SELECT department, employee, salary, rank() over (partition by department order by Salary desc) AS Rank FROM( 
SELECT e.name as employee, salary, d.name as department
FROM Employee e
LEFT JOIN Department d
on e.departmentId = d.id )a)b 
WHERE rank = 1 
