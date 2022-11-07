-- Active: 1664349590702@@127.0.0.1@5432
CREATE DATABASE Basics;

use Basics;


select * from sales;

-- select using where clause
select * from sales where price > 3000;

select product_name from sales where product_name like '%B%';

select product_name from sales where product_name like 'M%';
select product_name from sales where product_name like '__r%';

select product_name,price from sales order by price desc; 

select store_name,product_name,price from sales GROUP BY store_name,product_name,price;

select  distinct store_name  from sales;

select * from sales where NOT   price > 3000;


select * from sales where price between  1000 and 2000;

select * from sales where (quantity=1 and price>3000) or store_id=1 or store_id=3;


-- Aggregation Functions

select count(*)  total_w from sales;

select sum(price) total_v from sales;

select min(price) min ,max(price) max from sales;

select avg(price) avg from sales;

select store_name total,count(product_name) total from sales group by store_name;

-- String Function

select char_length(product_name) length from sales;

select left(product_name,5) length from sales;

select right(product_name,5) length from sales;

select position('p' in product_name) length from sales;

select CONCAT(store_name ,'' ,product_name,'' ,price) length from sales;

select upper(product_name) Name, lower(store_name) from Sales;

select replace(product_name,'a','y') length from sales;

-- Math FUNCTION

select round(price),CEILING(price),floor(price) from sales;

-- Date and Time Function
 
 select CURDATE();

  select CURTIME();

  select NOW() ;

-- using if and  Case Statement

select store_name,product_name ,price,
if(price BETWEEN 1000 and 2000, 'Mera Aukad Hai','Tera Aukad ka Nahi hai') as  ReMarks from sales;


select store_name,product_name ,price,
case 
when price<=1000 then 'Bikhari Sala'
when price >1000 and price<=2000 then 'Kanjus sala'
when price >2000 and price<=3000 then 'chor sala'
else "amir bsdk" 
end as Remark
from sales;
