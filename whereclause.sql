select product_id , product_name from production.products where category_id = 1 order by product_name;

select product_id , product_name, model_year from production.products where list_price > 3000 or model_year = 2018 order by product_name;
 
select product_id , product_name, model_year from production.products where list_price between 3000 and 4000;

select product_id , product_name, model_year from production.products where list_price in(489.99, 2442,24445);

select product_id , product_name, model_year from production.products where product_name like '%cruise%';

