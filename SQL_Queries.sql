-- Customer Sales Analytics - SQL Queries

-- 1. Gender: What is the total sales amount by Gender?
SELECT "Gender", SUM("Amount") AS Total_Amount
FROM customer_clean_data
GROUP BY "Gender"
ORDER BY Total_Amount DESC;

-- 2. Age: What is the total sales amount by Age Group?
SELECT "Age Group", SUM("Amount") AS Total_Amount
FROM customer_clean_data
GROUP BY "Age Group"
ORDER BY Total_Amount DESC;

-- 3. Marital Status: What is the total sales amount by Marital Status and Gender?
SELECT "Marital_Status", "Gender", SUM("Amount") AS Total_Amount
FROM customer_clean_data
GROUP BY "Marital_Status", "Gender"
ORDER BY Total_Amount DESC;

-- 4. State: Which are the top 15 states by total number of orders?
SELECT "State", SUM("Orders") AS Total_Orders
FROM customer_clean_data
GROUP BY "State"
ORDER BY Total_Orders DESC
LIMIT 15;

-- 5. State (Sales Amount): Which are the top 15 states by total sales amount?
SELECT "State", SUM("Amount") AS Total_Amount
FROM customer_clean_data
GROUP BY "State"
ORDER BY Total_Amount DESC
LIMIT 15;

-- 6. Occupation: What is the total sales amount by Occupation?
SELECT "Occupation", SUM("Amount") AS Total_Amount
FROM customer_clean_data
GROUP BY "Occupation"
ORDER BY Total_Amount DESC;

-- 7. Product Category: What are the top 10 Product Categories by total sales amount?
SELECT "Product_Category", SUM("Amount") AS Total_Amount
FROM customer_clean_data
GROUP BY "Product_Category"
ORDER BY Total_Amount DESC
LIMIT 10;

-- 8. Product ID: What are the top 10 Products (Product_ID) by total number of orders?
SELECT "Product_ID", SUM("Orders") AS Total_Orders
FROM customer_clean_data
GROUP BY "Product_ID"
ORDER BY Total_Orders DESC
LIMIT 10;
