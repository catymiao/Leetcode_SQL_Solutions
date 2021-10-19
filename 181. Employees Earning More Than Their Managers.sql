# Write your MySQL query statement below
select Employee from (
	select e.id, e.Name Employee ,e.Salary EmployeeSal, m.Salary ManagerSal from employee e
    inner join employee m 
    on e.managerID = m.Id)a
where EmployeeSal > ManagerSal
