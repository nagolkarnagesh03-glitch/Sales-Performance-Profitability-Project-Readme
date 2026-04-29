CREATE DATABASE sales_project_db;
USE sales_project_db;


--  Total Orders

SELECT  COUNT(*)  AS Total_Orders
FROM orders;


-- check first 10 rows
 
SELECT * FROM orders
LIMIT 10 ;


-- check null values 
SELECT 
       COUNT(*) - COUNT(order_id) as missing_order_id,
       COUNT(*) - COUNT(customer_id) as missing_order_id,
       COUNT(*) - COUNT(sales) as missing_sales,
       COUNT(*) - COUNT(profit) as missing_profit
FROM orders;
       
       
-- Date range check 
 
 SELECT 
       MIN(order_date) as  first_order,
       MAX(order_date) as last_order
FROM orders;


-- Total Sales & Total Profit
 
SELECT ROUND(SUM(sales),0) as Total_sales,
       ROUND(SUM(profit),0) as Total_profit
FROM orders ;


-- Region wise sales & profit

SELECT region ,
       ROUND(SUM(sales),2) as Total_sales,
       ROUND(SUM(profit),0) as Total_profit
FROM orders
GROUP BY region
ORDER BY Total_profit DESC;


-- Top loss making products


SELECT product_name,
      SUM(sales) as Total_sales,
      SUM(profit) as total_profit
FROM orders
GROUP BY product_name
ORDER BY total_profit ASC 
LIMIT 10 ;


-- Discount Impact on Proft

SELECT discount,
ROUND(SUM(profit),0) as total_profit
FROM orders
GROUP BY discount
ORDER BY discount ; 

-- categories wise sales & profit

SELECT category,
	   SUM(sales) as total_sales,
       SUM(profit) as total_profit
FROM orders
GROUP BY category
ORDER BY total_profit DESC ;


-- sub_category wise sales & profit
 
SELECT sub_category ,
       SUM(sales) as total_sales,
       SUM(profit) as total_profit
FROM orders
GROUP BY sub_category
ORDER BY total_profit DESC ;


-- customer segment profitability

SELECT segment,
       SUM(sales) as total_sales,
       SUM(profit) as total_profit
FROM orders
GROUP BY segment
ORDER BY total_profit DESC ;


-- Top 10 most profitable states 

SELECT state,
SUM(sales) as total_sales,
SUM(profit) as total_profit
FROM orders
GROUP BY state
ORDER BY total_profit DESC
LIMIT 10 ;

-- Top 10 loss-making states
 
SELECT state,
SUM(sales) as total_sales,
SUM(profit) as total_profit
FROM orders
GROUP BY state
ORDER BY total_profit ASC 
LIMIT 10 ;



-- shipping cost impact 

SELECT ship_mode,
       SUM(shipping_cost) as total_shipping_cost,
       SUM(profit) as total_profit
FROM orders
GROUP BY ship_mode
ORDER BY total_profit DESC ;

-- high sales but negative profit orders

SELECT order_id,
       product_name,
       sales,
       profit,
       discount
FROM orders
WHERE sales > 1500
AND profit < 0
ORDER BY sales DESC ;

-- 
SELECT MIN(sales) as min_sales ,
       MAX(sales) as max_sales,
       AVG(sales) as avg_sales
FROM orders ;

-- average delivery time by ship mode

SELECT ship_mode,
		AVG(delivery_days) as avg_delivery_days
FROM orders
GROUP BY ship_mode
ORDER BY  avg_delivery_days ;
