---drop table if exists Zepto;   

create table Zepto(
sku_id SERIAL primary key,
category varchar(120),
name varchar(150) not null,
mrp numeric(8,2),
discountPercent numeric(5,2),
availableQuantity Integer,
discountedSellingPrice numeric(8,2),
weightInGms integer,
outofstock boolean,
quantity integer
);


-----data exploration--

--count of rows--

select count(*) from zepto;

--Sample of data--

select * from zepto;
select * from zepto limit 10;


--Checking Null Values--

select * from zepto
where name is null
or
category is null
or
mrp is null
or
discountpercent is null
or
availablequantity is null
or
discountedsellingprice is null
or
weightingms is null
or
outofstock is null
or
quantity is null;


---Checking Distinct Categories(14)

select distinct category from zepto
order by category;


---Checking Products In Stock or Out of stock

select outofstock, count(sku_id) from zepto
group by outofstock;


---Checking Product Name which is Multiple time

select name, count(sku_id) from zepto
group by name
having count(sku_id) > 1
order by count(sku_id) desc;


---Data Cleaning---
---Products with Price =0

select * from zepto
where mrp = 0 or discountedsellingprice = 0;


---Deleting Products with Price =0

delete from zepto
where mrp = 0;


---Converting Paise To Rupees

---update zepto set mrp = mrp/100.0,
discountedsellingprice = discountedsellingprice/100.0;



select * from zepto;


--Q1: Find the Top 10 best value products based on discount percentage.

select distinct(name), discountpercent from zepto 
order by discountpercent desc
limit 10;


--Q2: What are the products with high mrp but ot of stock.

select distinct(name), mrp, outofstock from zepto
where outofstock = 'true' and mrp > 300
order by mrp desc;


--Q3: Calculate estimated revenue for each categoty.

select category, sum(discountedsellingprice * availablequantity) as Total_Revenue
from zepto
group by category
order by Total_Revenue;


--Q4: Find all products where mrp is greater than 500 & discount is less than 10%.

select distinct(name), mrp, discountpercent from zepto
where mrp > 500 and discountpercent < 10
order by mrp desc, discountpercent desc;


--Q5: Identify the top 5 categories offering the highest average discount percentage.

select distinct(category), round(avg(discountpercent),2) as Average_Discount from zepto
group by category 
order by round(avg(discountpercent),2) desc
limit 5;


--Q6: Find the price per gram for products above 100g and sort by best value.

select name , weightingms, round(discountedsellingprice/weightingms,2) as Price_pergram 
from zepto
where weightingms > 100 
order by Price_pergram;


--Q7: Group the products into category like low, medium, bulk.

select distinct(name) , weightingms,
Case when weightingms < 1000 then 'Low'
     when weightingms < 5000 then 'Medium'
	 else 'Bulk'
	 end as Weight_Category	 	 
from zepto;


--Q8: What is total inventory weight per category

select distinct(category), sum(weightingms * availablequantity) as Total_Weight
from zepto
group by distinct(category)
order by Total_Weight desc;



