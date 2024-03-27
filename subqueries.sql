select order_id ,order_date, customer_id from sales.orders 
where customer_id IN 
( select customer_id from sales.customers where state = 'NY') 
order by order_id, order_date;


select order_id , order_date , (select max(list_price) from sales.order_items i where i.order_id = o.order_id) as max_list_price 
from sales.orders o
order by order_date desc;

select product_id , product_name from production.products where category_id IN 
(select category_id from production.categories where category_name = 'Mountain Bikes' OR category_name = 'Road bikes');

