Use Northwind
Go

--First name, last name and salary of the employees who have Hire date higher than an employee having last name "King"
select e.FirstName,e.LastName,e.HireDate
from Employees e
where e.HireDate >
	(select top 1 HireDate 
	from Employees
	where  LastName ='King')
order by HireDate desc

--Terretories and count(employee)
select t.TerritoryDescription,tempTable.[Employee count]
from Territories t
join
(select TerritoryID,count(EmployeeID) 'Employee count' 
from EmployeeTerritories
group by TerritoryID) tempTable
on tempTable.TerritoryID = t.TerritoryID

-- First name and last name of the employees working in Boston territory
select e.LastName,e.FirstName 
from Employees e
where e.EmployeeID in 
	(select EmployeeID 
	from EmployeeTerritories 
	where TerritoryID in 
		(select TerritoryID  
		from Territories
		where upper(TerritoryDescription) = Upper('Boston')))
