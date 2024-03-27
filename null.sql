SELECT
    customer_id,
    first_name,
    last_name,
    phone
FROM
    sales.customers
WHERE
	phone is not null
ORDER BY 
	first_name,
	last_name;