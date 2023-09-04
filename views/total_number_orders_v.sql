create view total_number_orders_v as
select o.status_id, 
      count(o.order_id) as number_of_order, 
      s.description
from orders o
join status s
on o.status_id = s.status_id
group by o.status_id, s.description;




