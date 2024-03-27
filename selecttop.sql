select count(*) from production.products;

select top 10 product_name, list_price from production.products order by list_price desc;

select top 1 percent product_name , list_price from production.products order by list_price;

select top 1 percent * from production.products;

select top 3 product_name, list_price from production.products order by list_price desc;

select top 3 with ties product_name, list_price from production.products order by list_price ;

