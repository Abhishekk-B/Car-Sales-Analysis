SELECT DATABASE();
use carsdb;

SELECT 
    *
FROM
    carsdetails;

CREATE TABLE dealers (
    d_id INT PRIMARY KEY,
    dealer_name VARCHAR(50),
    dealer_phone VARCHAR(50),
    dealer_region VARCHAR(50)
);

SELECT DISTINCT
    d_id, Dealer_name, Dealer_No, Dealer_region
FROM
    carsdetails;
    
insert into dealers (d_id,dealer_name,dealer_phone,dealer_region) 
select distinct d_id+1,Dealer_name, Dealer_No, Dealer_region 
from carsdetails;

SELECT 
    *
FROM
    dealers;


CREATE TABLE cars (
    car_id INT PRIMARY KEY,
    company VARCHAR(50),
    model VARCHAR(50),
    car_engine VARCHAR(50),
    transmission VARCHAR(50),
    color VARCHAR(50),
    price INT,
    body_style VARCHAR(50)
);


SELECT 
    COUNT(*)
FROM
    (SELECT DISTINCT
        c_id,
            company,
            model,
            engine,
            transmission,
            color,
            price,
            bodystyle
    FROM
        carsdetails) AS newTable;
SELECT DISTINCT
    c_id,
    company,
    model,
    engine,
    transmission,
    color,
    price,
    bodystyle
FROM
    carsdetails;
    
insert into cars (car_id,company,model,car_engine,transmission,color,price,body_style) 
select distinct c_id+1,company, model, engine,transmission,color,price,bodystyle 
from carsdetails;

SELECT 
    *
FROM
    cars;


CREATE TABLE customers (
    c_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(50),
    gender VARCHAR(10),
    annual_income INT,
    phone INT,
    d_id INT,
    car_id INT,
    FOREIGN KEY (d_id)
        REFERENCES dealers (d_id),
    FOREIGN KEY (car_id)
        REFERENCES cars (car_id)
);

insert into customers (customer_name,gender,annual_income,phone,d_id,car_id) 
select CustomerName,Gender,AnnualIncome,Phone,d_id+1,c_id+1 
from carsdetails;

SELECT 
    *
FROM
    customers;


SELECT 
    *
FROM
    dealers;
SELECT 
    *
FROM
    customers;
SELECT 
    *
FROM
    cars;
SELECT DISTINCT
    company
FROM
    cars;

