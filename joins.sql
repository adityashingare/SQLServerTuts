create schema hr;
GO

CREATE TABLE hr.candidates(
    id INT PRIMARY KEY IDENTITY,
    fullname VARCHAR(100) NOT NULL
);



CREATE TABLE hr.employees(
    id INT PRIMARY KEY IDENTITY,
    fullname VARCHAR(100) NOT NULL
);



INSERT INTO 
    hr.candidates(fullname)
VALUES
    ('John Doe'),
    ('Lily Bush'),
    ('Peter Drucker'),
    ('Jane Doe');


INSERT INTO 
    hr.employees(fullname)
VALUES
    ('John Doe'),
    ('Jane Doe'),
    ('Michael Scott'),
    ('Jack Sparrow');


select c.* , e.* from hr.candidates c inner join hr.employees e on c.id = e.id;

select c.* , e.* from hr.candidates c left join hr.employees e on c.fullname = e.fullname;

select c.* , e.* from hr.candidates c right join hr.employees e on c.fullname = e.fullname;

select c.* , e.* from hr.candidates c full join hr.employees e on c.fullname = e.fullname;

select product_name, list_price, category_name from production.products p inner join production.categories c on c.category_id = p.category_id;
