-- select the database
use carsdb;
show tables;
select * from customers;

-- Write a query to find the car details that have maximum price.
select * from cars where price=(select max(price) from cars);

-- Write a query to find the car details that have minimum price.
select * from cars where price=(select min(price) from cars);

-- Write a query to find out the customer name and region in which the maximum price car sold.
select cu.customer_name, dealer_region,ca.price from dealers d
inner join customers cu
on d.d_id=cu.d_id
inner join cars ca
on cu.car_id=ca.car_id
where ca.price=(select max(price) from cars);

-- Write a query to find out the top 5 cars company and model on the basis of price.
select company, model, price from cars order by price desc limit 5;

-- Write a query to find out the top 5 cars company and model on the basis of price.
select company, model, price from cars order by price desc limit 5;


-- Write a query to find out the total sales of all black color cars.
select sum(price) from cars where color='Black';

-- write a query to find out the number of males and females customers;
select gender, count(*) from customers group by gender;

-- write a query to find out the number of each type of transmission;
select transmission, count(*) from cars group by transmission;


select * from customers;
select * from dealers;
select * from cars;