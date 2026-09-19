# Olist Brazilian E-Commerce SQL Data Analysis

## Project Overview

This project analyzes the Olist Brazilian E-Commerce dataset using SQL. 
The goal of the project is to answer business questions related to customer 
spending, revenue trends, product performance, customer segmentation, and 
repeat purchasing behavior.

The analysis was completed using MySQL.

## Dataset

The project uses the Olist Brazilian E-Commerce Public Dataset, which contains 
information about customers, orders, products, payments, reviews, sellers, 
and other transaction-related data.

The analysis uses multiple related tables, including:

- Customers
- Orders
- Order Items
- Order Payments
- Products

## Business Questions

The SQL analysis answers the following questions:

1. Who are the top 10 customers based on total amount spent?
2. What is the monthly revenue trend?
3. What is the month-over-month percentage change in revenue?
4. Which product categories generate the highest revenue?
5. What are the top 3 products by revenue within each product category?
6. How can customers be segmented based on their total spending?
7. How many customers are one-time buyers versus repeat buyers?
8. What percentage of total product revenue is contributed by the top product category?

## SQL Concepts Used

The project demonstrates the use of:

- SELECT and filtering
- Aggregate functions
- GROUP BY
- CASE WHEN
- INNER JOIN
- Common Table Expressions (CTEs)
- Window functions
- LAG()
- ROW_NUMBER()
- PARTITION BY
- Percentage calculations

## Key Findings

- The dataset contains 99,441 orders covering the period from September 2016 to October 2018.
- Monthly revenue generally increased as transaction activity grew, although the earliest months contain very limited activity and should be interpreted carefully.
- The majority of customers were one-time buyers, while repeat buyers represented a much smaller portion of unique customers.
- Beauty & Health generated the highest product-category revenue in the analyzed data.
- The top product category contributed 10.79% of total product-category revenue, indicating that revenue was distributed across multiple categories.

## Tools Used

- MySQL
- MySQL Workbench
- SQL
- GitHub

## Project Files

The repository contains eight SQL files corresponding to the eight business questions in the capstone project.

Each SQL file contains the query used to perform the analysis.
