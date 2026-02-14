-- Star Schema Retail Sales

-- Creating dimension customers table

CREATE TABLE dim_customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL,
    gender VARCHAR(10) CHECK (gender IN ('Male','Female')),
    age INT CHECK (age BETWEEN 18 AND 80),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--Creating dimension products table

CREATE TABLE dim_products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(150) NOT NULL,
    category VARCHAR(100) NOT NULL,
    brand VARCHAR(100) NOT NULL,
    product_cost NUMERIC(10,2) NOT NULL CHECK (product_cost > 0)
);

--Creating fact sales table

CREATE TABLE fact_sales (
    order_id SERIAL PRIMARY KEY,
    product_id INT NOT NULL,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    unit_price NUMERIC(10,2) NOT NULL CHECK (unit_price > 0),
    FOREIGN KEY (product_id) REFERENCES dim_products(product_id),
    FOREIGN KEY (customer_id) REFERENCES dim_customers(customer_id)
);

--Indexation for performance

CREATE INDEX idx_sales_product ON fact_sales(product_id);
CREATE INDEX idx_sales_customer ON fact_sales(customer_id);
CREATE INDEX idx_sales_date ON fact_sales(order_date);
