SET search_path = burgernaya, public;
--Table employee

--hire Pavlik 10 in first restaurant

insert into employee (restaurant_id, employee_phone, employee_email, name)
values(1, '12345678911', 'employeenew1@example.com', 'Pavlik 10');


--change Pavlik 10's email

update employee 
set employee_email = 'newnewmeail@example.com'
where employee_phone = '12345678911';


--list of first restaurant workers

select name
from employee e 
where restaurant_id = 2;

--fire Pavlik 10

delete from employee 
where employee_phone = '12345678911';



--Table orders 

--make new order from client Сергей Соколов (id 5) (order content = (Бургер куриный (id 1)))

insert into orders (employee_id, restaurant_id, client_id, date)
values (5, (select restaurant_id from employee where employee_id = 5), 5, date(now()));

insert into order_content (order_id, product_id, quantity)
values ((select(max(order_id)) from orders where client_id = 5), 1, 1);


--Pavlik 5 was not able to do it and Pavlik 7 did it instead 

update orders 
set employee_id = 1
where order_id = (select(max(order_id)) from orders where client_id = 5);


--Pavlik 7 was not able too, and order had to be canceled

delete from order_content 
where order_id = (select max(order_id) from orders where client_id = 5);

delete from orders 
where order_id = (select max(order_id) from orders where client_id = 5);


--number of client's (Сергей Соколов (id 5)) orders in restaurant 2

select count(*)
from orders o 
where client_id = 5 and restaurant_id = 2;

