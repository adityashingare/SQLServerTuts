select first_name , last_name from sales.customers order by first_name;

select first_name , last_name from sales.customers order by first_name desc;

select city, first_name , last_name from sales.customers order by city,first_name;

select city, first_name , last_name from sales.customers order by city desc,first_name asc;

select first_name, last_name from sales.customers order by city;

select first_name from sales.customers order by len(first_name) desc;


select city, first_name , last_name from sales.customers order by 1 desc , 2;

