CREATE Function GetOrdersQuantityByCustomerCountry (@country varchar(5)) returns int 
as 
BEGIN
DECLARE 
@count int;
set @count = 0;
select @count =  count(*) from Orders o
join Customers c on c.CustomerID = o.CustomerID
where c.Country = @country
return @count
END
