select count(*) as Employee_Count from employees; 
select firstname,lastname,email from employees where email in (select email from employees group by email having count(*) > 1);
select count(*) as Order_Count from (select distinct orderNumber from orderdetails) as count;
select distinct orderdetails.orderNumber,orderDate FROM orderdetails inner join orders on orderdetails.orderNumber = orders.orderNumber order by orderdate desc limit 10;
select orderNumber, sum(quantityOrdered * priceEach) as totalPrice from orderdetails group by orderNumber order by totalPrice desc limit 1;
delete from orders where orderNumber = 10100;
select * from orders where orderNumber = 10100; 