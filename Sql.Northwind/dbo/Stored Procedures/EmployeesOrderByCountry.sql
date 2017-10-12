
CREATE procedure EmployeesOrderByCountry @country varchar(10),@countEmployees int output
As
BEGIN 
select temp1.Country, c.ContactName, temp1.[Order Quantity]
from
(select distinct e.Country,od.CustomerID,count(OrderID) as 'Order Quantity'
from Orders oD
join Employees e on e.EmployeeID = oD.EmployeeID 
Group by e.Country, oD.CustomerID
having e.Country = @country) temp1
join Customers c on c.CustomerID = temp1.CustomerID
Order by [Order Quantity] desc;
set @countEmployees= 3; 
END 