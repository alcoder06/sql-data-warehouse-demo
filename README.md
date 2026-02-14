# 🏗 Sales Data Warehouse (SQL Project)

## 📌 Project Overview

This project demonstrates the design and implementation of a simple **Sales Data Warehouse** using a **Star Schema** model.

It simulates a retail business environment by modeling:

- Customers
- Products
- Sales transactions

The project focuses on clean schema design, structured seed data, and realistic transaction generation.

---

## 🧱 Data Model

The database follows a **Star Schema architecture**:

### Dimension Tables
- `dim_customers`
- `dim_products`

### Fact Table
- `fact_sales`

The fact table stores transactional sales data and connects to dimension tables using foreign keys.

---

database/
├── 01_schema.sql # Table definitions
├── 02_seed_dimensions.sql # Dimension seed data
└── 03_seed_fact.sql # Randomized sales generation


---

## ⚙️ Implementation Details

- Relational database design
- Primary and foreign key constraints
- Data integrity enforcement
- Randomized sales generation logic
- Realistic pricing with profit margin calculation
- 1000 simulated sales transactions

---

## 🛠 Tech Stack

- SQL
- PostgreSQL (recommended)

---

## 📊 Analytical Use Cases

This dataset can be used for:

- Revenue analysis
- Sales trend analysis
- Customer segmentation
- Product performance evaluation
- BI dashboard development

---

## 🚀 Possible Enhancements

- Add a `dim_date` table
- Implement indexing strategy
- Create analytical SQL queries
- Add stored procedures
- Containerize with Docker
- Connect to Power BI / Tableau

---

## 🎯 Purpose

This project was created to practice:

- Data warehouse modeling
- SQL development
- Analytical database design

## 📂 Project Structure

