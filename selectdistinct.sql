select distinct city from sales.customers  order by city;

select count(distinct(city)) from sales.customers;

select distinct state, city from sales.customers;

select distinct phone from sales.customers order by phone;

select city, state, zip_code from sales.customers group by city , state, zip_code order by city, state, zip_code;

select distinct city, state, zip_code from sales.customers;

