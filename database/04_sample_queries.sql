-- ==========================================
-- SAMPLE ANALYTICAL QUERIES
-- ==========================================


-- 1️⃣ Total Revenue
-- Calculate total sales revenue
SELECT 
    SUM(total_amount) AS total_revenue
FROM fact_sales;



-- 2️⃣ Total Sales by Country
-- Revenue grouped by customer country
SELECT 
    c.country,
    SUM(f.total_amount) AS revenue
FROM fact_sales f
JOIN dim_customers c ON f.customer_id = c.customer_id
GROUP BY c.country
ORDER BY revenue DESC;



-- 3️⃣ Top 5 Best-Selling Products (by revenue)
SELECT 
    p.product_name,
    SUM(f.total_amount) AS total_revenue
FROM fact_sales f
JOIN dim_products p ON f.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC
LIMIT 5;



-- 4️⃣ Total Quantity Sold per Product Category
SELECT 
    p.category,
    SUM(f.quantity) AS total_units_sold
FROM fact_sales f
JOIN dim_products p ON f.product_id = p.product_id
GROUP BY p.category
ORDER BY total_units_sold DESC;



-- 5️⃣ Monthly Revenue Trend
-- Shows revenue growth over time
SELECT 
    DATE_TRUNC('month', sale_date) AS month,
    SUM(total_amount) AS monthly_revenue
FROM fact_sales
GROUP BY month
ORDER BY month;



-- 6️⃣ Average Order Value
-- Average revenue per transaction
SELECT 
    ROUND(AVG(total_amount), 2) AS avg_order_value
FROM fact_sales;



-- 7️⃣ Top 5 Customers by Spending
SELECT 
    c.first_name,
    c.last_name,
    SUM(f.total_amount) AS total_spent
FROM fact_sales f
JOIN dim_customers c ON f.customer_id = c.customer_id
GROUP BY c.first_name, c.last_name
ORDER BY total_spent DESC
LIMIT 5;



-- 8️⃣ Revenue by Gender
SELECT 
    c.gender,
    SUM(f.total_amount) AS revenue
FROM fact_sales f
JOIN dim_customers c ON f.customer_id = c.customer_id
GROUP BY c.gender;



-- 9️⃣ Most Profitable Products
-- Revenue minus estimated product cost
SELECT 
    p.product_name,
    SUM(f.total_amount - (f.quantity * p.product_cost)) AS estimated_profit
FROM fact_sales f
JOIN dim_products p ON f.product_id = p.product_id
GROUP BY p.product_name
ORDER BY estimated_profit DESC
LIMIT 5;



-- 🔟 Average Customer Age by Country
SELECT 
    country,
    ROUND(AVG(age), 1) AS avg_age
FROM dim_customers
GROUP BY country
ORDER BY avg_age DESC;
