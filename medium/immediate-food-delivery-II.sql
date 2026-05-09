select 
round ( (count(case when customer_pref_delivery_date = order_date then 1 end ) * 100.0 )/ count(*)::numeric ,2 ) as immediate_percentage
from Delivery
where (customer_id, order_date) in (select customer_id, min(order_date) from delivery
group by customer_id);
