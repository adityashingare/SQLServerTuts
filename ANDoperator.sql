SELECT 
  * 
FROM 
  production.products 
WHERE 
  category_id = 1 
  AND list_price > 400 
ORDER BY 
  list_price DESC;


  Select * from production.products where category_id =1 AND list_price > 400 and brand_id = 1 order by list_price desc;

  select * from production.products where category_id  = 1 or list_price > 1000  and category_id = 2  order by list_price desc;




