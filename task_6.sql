--query 1: size of tip that client left to the special employee and size that was left by him during all time to staff

with t1 as (select client_id, employee_id, sum(tip) as tip_for_emp	
from orders
group by client_id, employee_id)

select client_id, employee_id, tip_for_emp, sum(tip_for_emp) over(partition by client_id) as totel_tip
from t1
order by client_id, tip_for_emp desc;


--query 2: avereage month amount of specific ingredient that is used in restaurant 2 and amount that was used during specific month 

with t1 as (select order_id, ingredient_id, grams * quantity as total_grams
from order_content oc left join menu_item mi on oc.product_id = mi.product_id ),

t2 as(select restaurant_id, extract (month from date) as month, sum(total_grams) as total_grams_m, t1.ingredient_id
from orders o left join t1 on o.order_id = t1.order_id
group by restaurant_id, month, t1.ingredient_id)

select restaurant_id, month, total_grams_m, avg(total_grams_m) over(partition by ingredient_id) as avg_grams, ingredient_id
from t2
where restaurant_id = 2;


--query 3: serial number of client's visit day, when he created loyalty card

with t1 as(select client_id, rank() over(partition by client_id order by date) as order_day_number, date, creation_date 
from  orders o left join loyalty_card lc  on lc.owner_id = o.client_id )

select client_id, order_day_number, date
from t1
where date = creation_date;
