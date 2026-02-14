# SQL Data Warehouse Demo

This project demonstrates a simple retail data warehouse built using PostgreSQL and a star schema design.

## 📊 Schema Overview

The warehouse consists of:

- `dim_customers` – customer information
- `dim_products` – product metadata
- `fact_sales` – transactional sales data

## 🏗 Architecture

This project follows a **star schema** structure:

- Dimension tables store descriptive attributes.
- Fact table stores measurable transactional data.
- Foreign keys enforce referential integrity.
- Indexes improve join and filtering performance.

## 📂 Project Structure

database/
- 01_schema.sql
- 02_seed_dimensions.sql
- 03_seed_fact.sql
- 04_sample_queries.sql

## 🚀 How to Use

1. Create a PostgreSQL database
2. Run schema file
3. Insert dimension data
4. Insert fact data
5. Execute analytical queries

---

This project demonstrates:
- Data modeling
- Constraint usage
- Index optimization
- Analytical SQL
