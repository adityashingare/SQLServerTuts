select product_name, order_id from production.products p left join sales.order_items o  ON p.product_id = o.product_id;

select order_id , count(product_name) from production.products p left join sales.order_items o  ON p.product_id = o.product_id group by 
order_id order by order_id;

select p.product_name , o.order_id, i.item_id, o.order_date from production.products p left join sales.order_items i on p.product_id = i.product_id
left join sales.orders o ON i.order_id = o.order_id where o.order_id = 100 order by o.order_id;

