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


-- query 4: the address of the restaurant where chicken burgers are most frequently ordered + their quantity

select restaurant_address,
       count(*) as amount
from order_content
         left join orders o on order_content.order_id = o.order_id
         left join restaurant r on o.restaurant_id = r.restaurant_id
where product_id = 1
group by restaurant_address
order by amount desc
limit 1;

-- query 5: the amount of chili pepper used between the 17th and 24th of the month, in grams
select SUM(total_sum) as total_sum
from (select sum(grams * quantity) as total_sum
      from ingredients
               left join public.menu_item mi ON ingredients.ingredient_id = mi.ingredient_id
               left join order_content oc ON mi.product_id = oc.product_id
               left join orders o ON oc.order_id = o.order_id
      where (oc.product_id = 3)
        and (mi.ingredient_id = 3)
        and (
          date between '2023-01-17'
              and '2023-01-24'
          )
      group by oc.product_id,
               mi.ingredient_id,
               date) as subquery;

--query 6: displays all drinks that were ordered at the restaurant located at Lermontov 5 + their quantity

select
  ingredient_name,
  count(*) as amount
from
  restaurant
  left join orders o on restaurant.restaurant_id = o.restaurant_id
  left join order_content oc on o.order_id = oc.order_id
  left join menu_item mi on oc.product_id = mi.product_id
  left join ingredients i on mi.ingredient_id = i.ingredient_id
where
  (o.restaurant_id = 2)
  and (
    i.ingredient_id = 9
    or i.ingredient_id = 10
  )
group by
  ingredient_name
order by
  amount desc



