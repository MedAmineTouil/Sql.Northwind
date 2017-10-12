USE Northwind
Go
--Product Name and Qunatity\unit
select ProductName,QuantityPerUnit 
from Products

--Current product List
select p.ProductID, p.ProductName 
from Products p 
where p.Discontinued = 0; 

--Discounted product List
select p.ProductID, p.ProductName 
from Products p 
where p.Discontinued =1;

--Most expensive product
select p.ProductName 'name',p.UnitPrice 'unit price' 
from Products p 
order by p.UnitPrice desc 

--Products where product cost is less then 20$
select p.ProductID 'Id', p.ProductName 'Name',p.UnitPrice 'Unit price' 
from Products p
where p.UnitPrice < 20
order by p.UnitPrice desc

--Products where product cost between 15$ and 25$
select p.ProductID 'Id', p.ProductName 'Name',p.UnitPrice 'Unit price' 
from Products p
where p.UnitPrice between 15 and 25
order by p.UnitPrice desc

--Average price of products
select p.ProductName 'Name', p.UnitPrice 'Unit price' 
from Products p
where p.UnitPrice > (select AVG(UnitPrice) from Products)
order by p.UnitPrice desc

--Ten most expensive products
select top 10 p.ProductName 'Name',p.UnitPrice 'Unit price' 
from Products p
order by p.UnitPrice desc

--The count of current and Discontinued products
select 
case when Discontinued = 1 then 'Current' else 'Discounted' end as Status,
count(p.Discontinued) 'Count'
from Products p
group by p.Discontinued

--Products of a stock less than quantity on order
Select p.ProductName 'name',p.UnitsInStock 'units in stock',p.UnitsOnOrder 'units on order'
from Products p
where p.UnitsInStock < p.UnitsOnOrder
order by name desc
