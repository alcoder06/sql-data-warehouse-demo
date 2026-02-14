-- =====================================================
-- SALES DATA WAREHOUSE - SAMPLE ANALYTICAL QUERIES
-- =====================================================
-- These queries demonstrate analytical capabilities
-- using the star schema:
-- dim_customers
-- dim_products
-- fact_sales
-- =====================================================


-- 1️⃣ Total Revenue
-- Calculates overall revenue from all sales
SELECT 
    SUM(quantity * unit_price) AS total_revenue
FROM fact_sales;



-- 2️⃣ Revenue by Country
-- Shows total revenue generated per customer country
SELECT 
    c.country,
    SUM(f.quantity * f.unit_price) AS revenue
FROM fact_sales f
JOIN dim_customers c 
    ON f.customer_id = c.customer_id
GROUP BY c.country
ORDER BY revenue DESC;



-- 3️⃣ Top 5 Products by Revenue
-- Identifies highest revenue-generating products
SELECT 
    p.product_name,
    SUM(f.quantity * f.unit_price) AS revenue
FROM fact_sales f
JOIN dim_products p 
    ON f.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC
LIMIT 5;



-- 4️⃣ Total Units Sold by Category
-- Measures product category performance
SELECT 
    p.category,
    SUM(f.quantity) AS total_units_sold
FROM fact_sales f
JOIN dim_products p 
    ON f.product_id = p.product_id
GROUP BY p.category
ORDER BY total_units_sold DESC;



-- 5️⃣ Monthly Revenue Trend
-- Tracks revenue growth over time
SELECT 
    DATE_TRUNC('month', order_date) AS month,
    SUM(quantity * unit_price) AS monthly_revenue
FROM fact_sales
GROUP BY month
ORDER BY month;



-- 6️⃣ Average Order Value
-- Calculates average revenue per transaction
SELECT 
    ROUND(AVG(quantity * unit_price), 2) AS avg_order_value
FROM fact_sales;



-- 7️⃣ Top 5 Customers by Spending
-- Identifies highest value customers
SELECT 
    c.first_name,
    c.last_name,
    SUM(f.quantity * f.unit_price) AS total_spent
FROM fact_sales f
JOIN dim_customers c 
    ON f.customer_id = c.customer_id
GROUP BY c.first_name, c.last_name
ORDER BY total_spent DESC
LIMIT 5;



-- 8️⃣ Revenue by Gender
-- Compares revenue contribution by gender
SELECT 
    c.gender,
    SUM(f.quantity * f.unit_price) AS revenue
FROM fact_sales f
JOIN dim_customers c 
    ON f.customer_id = c.customer_id
GROUP BY c.gender;



-- 9️⃣ Estimated Profit by Product
-- Profit = (unit_price - product_cost) * quantity
SELECT 
    p.product_name,
    SUM((f.unit_price - p.product_cost) * f.quantity) AS estimated_profit
FROM fact_sales f
JOIN dim_products p 
    ON f.product_id = p.product_id
GROUP BY p.product_name
ORDER BY estimated_profit DESC
LIMIT 5;



-- 🔟 Orders per Month
-- Counts number of transactions per month
SELECT 
    DATE_TRUNC('month', order_date) AS month,
    COUNT(*) AS total_orders
FROM fact_sales
GROUP BY month
ORDER BY month;
