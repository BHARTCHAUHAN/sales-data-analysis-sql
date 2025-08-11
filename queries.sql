create database salesdata;
use salesdata;
show tables;
describe details;
SELECT * FROM details;

select count(*) from details;

select * FROM DETAILS LIMIT 30;

SHOW TABLES;

select * from sale_data limit 500;

use salesdata;
show tables;
select * from sales_data;
select count(*) from sales_data;


#Total Sales Amount
select sum(Amount) from sales_data;

#Top 3 Products by Sales
SELECT category, SUM(amount) AS total_sales FROM sales_data
GROUP BY category
ORDER BY total_sales DESC
LIMIT 3;

#disable safe mode
SET SQL_SAFE_UPDATES = 1;


select * from details;


# Total Profit by Sub-Category
SELECT `Sub-Category`, SUM(Profit) AS total_profit
FROM sales_data
GROUP BY `Sub-Category`
ORDER BY total_profit DESC;

# Average Profit per Order
SELECT AVG(Profit) AS avg_profit_per_order
FROM sales_data;

# Total Quantity Sold by Category
SELECT Category, SUM(Quantity) AS total_quantity
FROM sales_data
GROUP BY Category
ORDER BY total_quantity DESC;

#Top 5 Most Profitable Sub-Categories
SELECT `Sub-Category`, SUM(Profit) AS total_profit
FROM sales_data
GROUP BY `Sub-Category`
ORDER BY total_profit DESC
LIMIT 3;


#1️ Total Sales by Category
SELECT Category, SUM(Amount) AS total_sales
FROM sales_data
GROUP BY Category
ORDER BY total_sales DESC;


#Total Profit by Category
SELECT Category, SUM(Profit) AS total_profit
FROM sales_data
GROUP BY Category
ORDER BY total_profit DESC;


#Top 5 Products (Sub-Category) by Sales
SELECT `Sub-Category`, SUM(Amount) AS total_sales
FROM sales_data
GROUP BY `Sub-Category`
ORDER BY total_sales DESC
LIMIT 5;


# Top 5 Products by Profit

SELECT `Sub-Category`, SUM(Profit) AS total_profit
FROM sales_data
GROUP BY `Sub-Category`
ORDER BY total_profit DESC
LIMIT 3;

#Highest Quantity Sold Products
SELECT `Sub-Category`, SUM(Quantity) AS total_quantity
FROM sales_data
GROUP BY `Sub-Category`
ORDER BY total_quantity DESC
LIMIT 4;






























ALTER TABLE sales_data
DROP COLUMN col6,
DROP COLUMN col7;


DESCRIBE sales_data;

ALTER TABLE sales_data
DROP COLUMN PaymentMode;


