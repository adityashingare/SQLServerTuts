select product_name , order_id from sales.order_items i right join production.products p ON i.product_id = p.product_id order by order_id;

select product_name , order_id from sales.order_items i right join production.products p ON i.product_id = p.product_id where order_id is null;
