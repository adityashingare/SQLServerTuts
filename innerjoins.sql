select product_name, list_price, category_name from production.products p inner join production.categories c on c.category_id = p.category_id;

select c.category_id, COUNT(p.category_id) total_categories  from production.products p, production.categories c where p.category_id = c.category_id group by c.category_id;
 
select product_name, list_price, category_name from production.products p inner join production.categories c on c.category_id = p.category_id order by product_name desc;

select product_name, category_name, brand_name , list_price from production.categories c inner join production.products p on c.category_id = p.category_id
																						inner join production.brands b on b.brand_id = p.brand_id
																						order by product_name desc;

