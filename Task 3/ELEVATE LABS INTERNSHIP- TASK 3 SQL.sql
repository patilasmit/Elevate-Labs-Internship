CREATE database CUSTOMERS;
USE CUSTOMERS;

CREATE TABLE CUSTOMER_NAME(
Customer_Index int PRIMARY KEY,
CustomerNames varchar(40));

CREATE  TABLE REGIONS(
RegionIndex int PRIMARY KEY,
City varchar(40),
Country varchar(40));

CREATE TABLE PRODUCTS(
ProductIndex int PRIMARY KEY,
Product_Name varchar(40));

CREATE TABLE SALES_ORDER (
    ORDERNUMBER VARCHAR(15) PRIMARY KEY,
    ORDERDATE VARCHAR(20),
    CUSTOMER_INDEX INT NOT NULL,
    `CHANNEL` VARCHAR(15),
    WAREHOUSE_CODE VARCHAR(15),
    DELIVERY_REGION_INDEX INT NOT NULL,
    PRODUCT_INDEX INT,
    ORDER_QTY INT,
    UNIT_PRICE_USD DECIMAL(7,2),
    TOTAL_REVENUE_USD DECIMAL(7,2),
    FOREIGN KEY (PRODUCT_INDEX) REFERENCES PRODUCTS(ProductIndex)
);

LOAD DATA INFILE "D:\\sales_order.csv"
INTO TABLE SALES_ORDER
FIELDS TERMINATED BY ','
enclosed by '"'
LINES terminated by '\n'
ignore 1 rows;

SELECT * FROM CUSTOMER_NAME;
SELECT * FROM PRODUCTS;
SELECT * FROM REGIONS;
SELECT * FROM SALES_ORDER;


--- 1. Top Performing Regions by Revenue
SELECT R.CITY AS CITY,
R.COUNTRY AS COUNTRY,
SUM(S.TOTAL_REVENUE_USD) AS REVENUE
FROM SALES_ORDER S
JOIN REGIONS AS R ON S.DELIVERY_REGION_INDEX = R.REGIONINDEX
GROUP BY CITY, COUNTRY
ORDER BY REVENUE
LIMIT 5;


--- 2. What is the total revenue generated from sales?
SELECT SUM(TOTAL_REVENUE_USD) AS TOTAL_REV
FROM SALES_ORDER;

--- 3.Which products have been sold and how many times?
SELECT P.PRODUCT_NAME, COUNT(S.ORDERNUMBER) AS TIMESOLD
FROM SALES_ORDER AS S 
JOIN PRODUCTS AS P ON S.PRODUCT_INDEX = P.PRODUCTINDEX
GROUP BY P.PRODUCTINDEX
ORDER BY TIMESOLD DESC;

--- 4.Customer Segmentation: High Value vs Low Value
SELECT C.CUSTOMERNAMES,
SUM(S.TOTAL_REVENUE_USD) AS CUSTOMER_REVENUE
FROM SALES_ORDER AS S
JOIN CUSTOMER_NAME AS C ON S.CUSTOMER_INDEX = C.CUSTOMER_INDEX
GROUP BY C.CUSTOMERNAMES
HAVING CUSTOMER_REVENUE > (SELECT AVG(TOTAL_REVENUE_USD) FROM SALES_ORDER)
ORDER BY CUSTOMER_REVENUE DESC;

--- 5. Channel Performance Comparison
SELECT `CHANNEL`, COUNT(*) AS TOTAL_ORDERS,
SUM(TOTAL_REVENUE_USD) AS TOTAL_REVENUE,
AVG(UNIT_PRICE_USD) AS AVG_UNIT_PRICE
FROM SALES_ORDER
GROUP BY `CHANNEL`
ORDER BY TOTAL_REVENUE DESC;

--- 6.Region-wise Product Revenue
CREATE VIEW REGION_WISE_PRODUCT_REV AS 
SELECT R.CITY , P.PRODCUT_NAME, SUM(S.TOTAL_REVENUE_USD) AS REVENUE
FROM SALES_ORDER AS S
JOIN PRODUCTS AS P ON S.PRODUCT_INDEX = P.PRODUCTINDEX
JOIN REGIONS R ON S.DELIVERY_REGION_INDEX = R.RegionIndex
GROUP BY R.CITY, P.PRODUCT_NAME;

--- 7.What are the most profitable products, and are they priced higher?
SELECT P.Product_Name,
AVG(S.UNIT_PRICE_USD) AS Avg_Unit_Price,
SUM(S.TOTAL_REVENUE_USD) AS Total_Revenue
FROM SALES_ORDER AS S
JOIN PRODUCTS P ON S.PRODUCT_INDEX = P.ProductIndex
GROUP BY P.Product_Name
ORDER BY Total_Revenue DESC;

--- 8.What is the average order value per region?
SELECT R.City,
R.Country,
COUNT(S.ORDERNUMBER) AS Total_Orders,
SUM(S.TOTAL_REVENUE_USD) AS Total_Revenue,
ROUND(SUM(S.TOTAL_REVENUE_USD) / COUNT(S.ORDERNUMBER), 2) AS Avg_Order_Value
FROM SALES_ORDER AS S
JOIN REGIONS R ON S.DELIVERY_REGION_INDEX = R.RegionIndex
GROUP BY R.City, R.Country
ORDER BY Avg_Order_Value DESC;

--- 9. Which customers are frequently buying (repeat customers)?
SELECT C.CustomerNames,COUNT(S.ORDERNUMBER) AS Order_Count,
SUM(S.TOTAL_REVENUE_USD) AS Total_Spent
FROM SALES_ORDER AS S
JOIN CUSTOMER_NAME AS C ON S.CUSTOMER_INDEX = C.Customer_Index
GROUP BY C.CustomerNames
HAVING Order_Count > 1
ORDER BY Order_Count DESC;

--- 10.Customer Revenue View 
CREATE VIEW CUSTOMER_REV_VIEW AS
SELECT C.CustomerNames,
SUM(S.TOTAL_REVENUE_USD) AS Total_Spent,
COUNT(S.ORDERNUMBER) AS Total_Orders
FROM SALES_ORDER AS S
JOIN CUSTOMER_NAME AS C ON S.CUSTOMER_INDEX = C.Customer_Index
GROUP BY C.CustomerNames;

--- 10.ADDING Indexes on Foreign Key Fields
-- Index on CUSTOMER_INDEX for faster joins with CUSTOMER_NAME
CREATE INDEX idx_customer_index ON SALES_ORDER(CUSTOMER_INDEX);

-- Index on DELIVERY_REGION_INDEX for efficient joins with REGIONS
CREATE INDEX idx_region_index ON SALES_ORDER(DELIVERY_REGION_INDEX);

-- Index on PRODUCT_INDEX for optimized joins with PRODUCTS
CREATE INDEX idx_product_index ON SALES_ORDER(PRODUCT_INDEX);

--- Performance Boosting Indexes
-- Index on ORDERDATE to boost time-based queries
CREATE INDEX idx_orderdate ON SALES_ORDER(ORDERDATE);

-- Index on CHANNEL to improve performance for grouped revenue or filtering by sales channel
CREATE INDEX idx_channel ON SALES_ORDER(CHANNEL);