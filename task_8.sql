create view order_price as 
(with t1 as(select o.order_id, loyalty_card, tip, quantity, product_id
from burgernaya.orders o left join burgernaya.order_content oc on o.order_id = oc.order_id)

select  order_id as order_number, sum(case when loyalty_card then product_special_price * quantity else product_price * quantity end) as price,
case when loyalty_card then 'использована' else 'не использована' end as loyalty_card, tip,
case when loyalty_card then sum(product_price * quantity) - sum(product_special_price * quantity) else 0 end as dif
from t1 left join burgernaya.menu m on t1.product_id = m.product_id 
group by order_id, loyalty_card, tip
order by order_id
)
