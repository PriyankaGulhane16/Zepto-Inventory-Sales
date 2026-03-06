🛒 Zepto Inventory Sales Data Analytics (SQL Project)

📌 Project Overview

This project is an end-to-end SQL-based data analysis using real-world e-commerce inventory data from Zepto.

The goal was to simulate real business scenarios by performing structured data cleaning, exploration, and generating actionable business insights using SQL. The project focuses on inventory performance, stock management, pricing strategy, and profitability analysis.

🎯 Project Objectives

Design and create the inventory database schema

Load and clean a large inventory dataset

Perform structured Exploratory Data Analysis (EDA)

Generate actionable business insights using advanced SQL queries

Calculate key business metrics such as:

Inventory Turnover Ratio

Stock-out Analysis

Profitability Metrics

Discount Effectiveness


🗄️ Database Design

Designed a structured inventory schema

Defined appropriate data types

Set primary keys and constraints

Optimized for analytical queries

The schema supports efficient aggregation, filtering, and KPI reporting.


🧹 Data Cleaning

To ensure high-quality analysis, the following steps were performed:

Removed rows where MRP or Selling Price = 0

Converted price values from paise to rupees for clarity

Rounded monetary values for better readability

Validated discount percentage calculations

Checked and ensured no NULL values in key analytical columns

Removed inconsistencies impacting profitability metrics


🔎 Data Exploration (EDA)

Structured SQL queries were written to explore and validate the dataset:

Counted total number of records

Displayed sample rows to understand data structure

Checked for missing/null values across columns

Identified unique product categories

Analyzed in-stock vs out-of-stock SKU distribution

Detected duplicate product names mapped to different SKUs

This phase ensured a strong understanding of inventory behavior before deeper analysis.


📊 Business Analysis & Metrics

Advanced SQL queries were used to derive business insights:

📦 Inventory Turnover Ratio

🚫 Stock-out Frequency Analysis

💰 Profit Margin & Revenue Contribution

🏷 Discount Impact on Sales

🏬 Category-wise Performance

🔁 High vs Low Movement Products

These metrics simulate real-world e-commerce decision-making scenarios.



🛠 Tools & Technologies

SQL

PostgreSQL / SQL Server

Relational Database Design

Data Cleaning & Validation

Business KPI Analysis



💼 Skills Demonstrated

SQL Query Writing (Advanced Aggregations, Group By, Filtering)

Data Cleaning & Validation

Database Schema Design

Business KPI Development

Inventory & Profitability Analysis

Translating Raw Data into Strategic Insights




📊 Business Insights

Found top 10 best-value products based on discount percentage

Identified high-MRP products that are currently out of stock

Filtered expensive products (MRP > ₹500) with minimal discount


Calculated price per gram to identify value-for-money products

Measured total inventory weight per product category

Identified fast-moving and slow-moving inventory

Detected high stock-out categories affecting revenue

Highlighted discount discrepancies impacting margins

Revealed category-level profitability trends

Provided data-backed recommendations for pricing and stock optimization





💡 Key Recommendations

1. Restock High-MRP Out-of-Stock Products
High-priced products that are currently out of stock may lead to lost revenue opportunities. Prioritize restocking these items to capture high-value sales.

2. Optimize Discount Strategy
Since discount discrepancies are affecting margins, the company should standardize discount policies across categories to balance sales growth and profitability.


3. Prevent Stock-Outs in High-Demand Categories
Categories with frequent stock-outs should have better demand forecasting and safety stock levels to avoid revenue loss.

4. Increase Discounts on Expensive Products
Products priced above ₹500 with minimal discounts may experience slower sales. Introducing targeted discounts or bundles can improve demand.

5. Focus on High-Discount Categories
The top 5 categories offering high average discounts can be used in seasonal promotions and advertisements to drive traffic and sales.





