select customer_id , YEAR(order_date) as order_year from sales.orders where customer_id IN (1,2) order by customer_id;

select customer_id , YEAR(order_date) order_year from sales.orders where customer_id IN (1,2) group by customer_id , year(order_date) order by customer_id;

select distinct customer_id , YEAR(order_date) order_year from sales.orders where customer_id in (1,2) order by customer_id;

select customer_id , YEAR(order_date) order_year, count(order_id) no_of_orders from sales.orders where customer_id IN (1,2) group by customer_id , year(order_date) order by customer_id;

SELECT
    customer_id,
    YEAR (order_date) order_year,
    order_status
FROM
    sales.orders
WHERE
    customer_id IN (1, 2)
GROUP BY
    customer_id,
    YEAR (order_date)
ORDER BY	
    customer_id;

select city , COUNT(customer_id) customer_count from sales.customers group by city order by city;

select city , state, COUNT(customer_id) customer_count from sales.customers group by state,city order by city;

select brand_name , max(list_price) MAX_list_price , min(list_price) MIN_list_price from production.products, production.brands
where production.products.brand_id = production.brands.brand_id  AND model_year = 2018
group by brand_name
order by brand_name;

select brand_name , AVG(list_price) from production.products, production.brands
where production.products.brand_id = production.brands.brand_id  and model_year = 2018
group by brand_name
order by brand_name;

select order_id , sum(quantity * list_price * (1 - discount)) from sales.order_items group by order_id;


select customer_id , YEAR(order_date) order_year , count(order_id) order_count
from sales.orders 
group by customer_id,YEAR(order_date) 
having COUNT(order_id) >= 2 
order by customer_id;


select order_id , sum(quantity * list_price * (1 - discount)) net_value
from sales.order_items 
group by order_id 
having sum(quantity * list_price * (1 - discount)) > 20000
order by net_value;

select category_id , MAX(list_price) max_price, MIN(list_price) min_price 
from production.products 
group by  category_id
having  MAX(list_price) > 4000 OR  MIN(list_price) < 500
order by category_id;

select	category_id , AVG(list_price) from production.products
group by category_id
having AVG(list_price) between 500 AND 1000
order by category_id;


