select * from production.brands;

select first_name, last_name from sales.customers;

select count(*) from sales.customers;

select first_name, last_name, email from sales.customers;

select * from sales.customers;

select first_name , state from sales.customers where state = 'CA' order by first_name;

select city, count(*) as total_cities from sales.customers where state = 'CA' group by city order by city;

select city, count(*) as total_cities from sales.customers where state = 'CA' group by city having count(*) > 10 order by city;