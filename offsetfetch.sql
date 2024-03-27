select product_name, list_price from production.products order by 2, 1;

select count(*) from production.products;

select product_name, list_price from production.products order by 2, 1 offset 10 rows fetch next 10 rows only;

select product_name, list_price from production.products order by 2, 1 offset 0 rows fetch next 10 rows only;

