SELECT
    b.brand_name AS brand,
    c.category_name AS category,
    p.model_year,
    round(
        SUM (
            quantity * i.list_price * (1 - discount)
        ),
        0
    ) sales INTO sales.sales_summary
FROM
    sales.order_items i
INNER JOIN production.products p ON p.product_id = i.product_id
INNER JOIN production.brands b ON b.brand_id = p.brand_id
INNER JOIN production.categories c ON c.category_id = p.category_id
GROUP BY
    b.brand_name,
    c.category_name,
    p.model_year
ORDER BY
    b.brand_name,
    c.category_name,
    p.model_year;


	select * from sales.sales_summary order by brand, category, model_year;


select brand, category , SUM(sales) net_value from sales.sales_summary group by brand, category order by brand,category,net_value;

select brand , SUM(sales) net_sales from sales.sales_summary group by brand order by brand;

select category , SUM(sales) net_sales from sales.sales_summary group by category order by category;

select SUM(sales) from sales.sales_summary;


SELECT
    brand,
    category,
    SUM (sales) sales
FROM
    sales.sales_summary
GROUP BY
    brand,
    category
UNION ALL
SELECT
    brand,
    NULL,
    SUM (sales) sales
FROM
    sales.sales_summary
GROUP BY
    brand
UNION ALL
SELECT
    NULL,
    category,
    SUM (sales) sales
FROM
    sales.sales_summary
GROUP BY
    category
UNION ALL
SELECT
    NULL,
    NULL,
    SUM (sales)
FROM
    sales.sales_summary
ORDER BY brand, category;


SELECT
	brand,
	category,
	SUM (sales) sales
FROM
	sales.sales_summary
GROUP BY
	GROUPING SETS (
		(brand, category),
		(brand),
		(category),
		()
	)
ORDER BY
	brand,
	category;

SELECT
	brand,
	category,
	SUM (sales) sales
FROM
	sales.sales_summary
GROUP BY
	GROUPING SETS 
		(brand, category)	
having SUM(sales) > 156145.0000
order by brand;