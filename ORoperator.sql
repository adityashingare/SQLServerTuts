select * from production.products where list_price < 200 or list_price > 600 order by list_price;

select * from production.products where brand_id = 1 or brand_id = 2 or brand_id = 4 order by brand_id;

select * from production.products where brand_id in (1,2,4) order by brand_id;

