CREATE SCHEMA IF NOT EXISTS burgernaya_views;
SET search_path = burgernaya_views, public;


CREATE VIEW client AS
SELECT CONCAT(LEFT(client_name, 1), REPEAT('*', LENGTH(client_name) - 1))         as name,
       CONCAT('****', RIGHT(client_phone, 4))                                     AS phone,
       CONCAT('****', SUBSTRING(client_email FROM POSITION('@' IN client_email))) AS email
FROM burgernaya.client;


CREATE VIEW Employee AS
SELECT CONCAT(LEFT(name, 1), REPEAT('*', LENGTH(name) - 1))                           as name,
       CONCAT('****', RIGHT(employee_phone, 4))                                       AS phone,
       CONCAT('****', SUBSTRING(employee_email FROM POSITION('@' IN employee_email))) AS email,
       restaurant_address                                                             as restraunt_address
FROM burgernaya.employee as e
         join burgernaya.restaurant r on r.restaurant_id = e.restaurant_id;


create view ingredients as
select ingredient_name                                         as name,
       case when (is_spicy) then 'острый' else 'не острый' end as is_spicy
from burgernaya.ingredients;


create view loyalty_card as
select CONCAT(LEFT(client_name, 1), REPEAT('*', LENGTH(client_name) - 1)) as holder_name,
       creation_date                                                      as creation_date
from burgernaya.loyalty_card lc
         join burgernaya.client c on c.client_id = lc.owner_id;


create view menu as
select product_name                          as name,
       product_price                         as price,
       product_price - product_special_price as discount
from burgernaya.menu;


create view menu_item as
select product_name    as product_name,
       ingredient_name as ingredient_name
from burgernaya.menu_item mi
         join burgernaya.ingredients i on i.ingredient_id = mi.ingredient_id
         join burgernaya.menu m on m.product_id = mi.product_id;



create view order_content as
select o.order_id         as order_id,
       restaurant_address as address,
       product_name       as product_name,
       quantity           as quantity
from burgernaya.order_content oc
         join burgernaya.menu m on m.product_id = oc.product_id
         join burgernaya.orders o on oc.order_id = o.order_id
         join burgernaya.restaurant r on o.restaurant_id = r.restaurant_id;


create view orders as
select CONCAT(LEFT(name, 1), REPEAT('*', LENGTH(name) - 1))               as employee_name,
       CONCAT(LEFT(client_name, 1), REPEAT('*', LENGTH(client_name) - 1)) as client_name,
       restaurant_address                                                 as restaurant_address,
       date                                                               as date,
       tip                                                                as tip,
       loyalty_card                                                       as loyalty_card

from burgernaya.orders o
         join burgernaya.employee on o.employee_id = employee.employee_id
         join burgernaya.client on o.client_id = client.client_id
         join burgernaya.restaurant on o.restaurant_id = restaurant.restaurant_id;


create view restaurant as
select restaurant_address as address
from burgernaya.restaurant;
