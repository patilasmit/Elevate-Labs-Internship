# Elevate-Labs-Internship

# Task No 1 Elevate Labs Internship | Day 1
## 🧼 Data Cleaning & Preprocessing | Elevate Labs Internship
This project contains my solution to **Task 1** of the **Elevate Labs Data Analyst Internship**, focused on cleaning and preparing real-world customer data using Python (Pandas).

## 📊 Dataset
- **Customer Personality Dataset** (2240,29 records)
- Includes demographics, lifestyle, and spending behavior.

## 🎯 Objective

> Clean and prepare the raw dataset by handling missing values, fixing data types, standardizing text, and engineering new features.


## ✅ Deliverables
- Cleaned dataset with nulls handled and formats fixed
- New analytical features engineered
- Structured notebook with clear steps
- This README documentation


## 🧠 Key Learnings
- Data cleaning: nulls, duplicates, type fixes
- Text normalization and formatting
- Date conversions & renaming
- Feature engineering for insights


## 🔧 Workflow Overview

| Step | Description |
|------|-------------|
| 1️⃣ | Load & inspect data |
| 2️⃣ | Handle missing values (median imputation) |
| 3️⃣ | Drop unhelpful columns (`ID`, `Z_CostContact`, `Z_Revenue`) |
| 4️⃣ | Normalize text (`Education`, `Marital_Status`) |
| 5️⃣ | Format date (`Dt_Customer` → `date`) |
| 6️⃣ | Fix data types |
| 7️⃣ | Engineer features:<br> ➤ `age`<br> ➤ `days_as_customer`<br> ➤ `age_group`<br> ➤ `loyalty_tier`<br> ➤ `is_parent`, `household_size` |



# Task No 2 - Elevate Labs Internship | Day 2
# 🛍️ Global Superstore Sales Intelligence Dashboard

This Power BI dashboard analyzes sales and profitability for Global Superstore—a retail company with wide-ranging operations across products, customer segments, and regions. The dashboard is divided into two insightful pages: an Executive Overview and a Deep Dive into performance drivers.

## 📌 Problem Statement

Global Superstore operates in multiple countries, offering a vast product catalog across various customer segments. Despite its reach, the business faces challenges like fluctuating profits, inefficiencies in order fulfillment, and an unclear understanding of what drives or drains revenue.

🔍 **Key Challenges Addressed:**
- Which products and regions are the most/least profitable?
- How do discounts, shipping modes, and customer segments impact profit?
- Where can we optimize operations and boost margins?

## 📈 Dashboard Goals
- Visualize sales and profit trends across categories, regions, and segments.
- Identify high-performing and underperforming areas in the business.
- Understand how discounts and shipping choices affect profitability.
- Drive better decisions through data-backed insights.

## 📊 Dashboard Overview
### ✅ Page 1: Executive Overview – Sales & Profit Breakdown

- **Category vs Sub-Category Analysis** (Stacked Bar Chart)
- **Sales by State** (Filled Map or Matrix)
- **Customer Segment Profit Share** (Donut Chart)
- **Order Priority vs Sales & Profit** (Column Chart)
- **Discount vs Profit Impact** (Scatter/Line Chart)
- **Shipping Mode Profitability** (Column Chart)

📌 *Summary:* A high-level view of sales and profitability, identifying top-performing areas and early profit leaks.

### ✅ Page 2: Deep Dive – Performance Drivers

- **Sub-Category Sales by Category**
- **State-wise Sales & Profit (with Conditional Formatting)**
- **Segment-wise Profit Distribution**
- **Order Priority vs Financial Impact**
- **Shipping Mode and Profitability Breakdown**

📌 *Summary:* Deeper analysis to uncover what truly drives or hinders performance and profitability.

## 🧠 Key Insights
- Phones and Chairs dominate sales; some categories underperform.
- California leads in revenue, but other states show low profit.
- Discounts are a major factor in declining profit margins.
- Standard shipping is the most used but not always most profitable.

## 🛠 Tools Used

- **Power BI** – Data cleaning, modeling, and visualization
- **DAX** – Calculated measures and KPIs (e.g., Total Sales, Profit)
- **Excel** – Initial dataset exploration

## ✅ Outcomes

This dashboard empowers decision-makers to:
- Optimize product and segment strategies
- Revisit discounting and shipping policies
- Focus on high-potential regions and reduce operational inefficiencies

> 📢 **From raw data to real business decisions—this project showcases the power of BI to drive strategic growth.**

# Task No 3 - Elevate Labs Internship | Day 3
# 🧠 Customer Sales & Regional Performance Optimization

## 📊 Project Overview
This project focuses on analyzing multi-dimensional sales data to derive actionable insights that enhance strategic decision-making in marketing, operations, and product planning. We utilize SQL to explore customer behavior, product performance, regional sales, and sales channel effectiveness.

> **Objective**: To optimize customer segmentation, boost regional performance, and enhance sales channel strategy using data-driven analysis.


## 📁 Folder Structure
- `sql/`: Contains the full SQL query script used for analysis.
- `report/`: Final project report in PDF format with screenshots and interpretations.

## 🛠️ Technologies Used
- SQL (MySQL)
  
## 📈 Key Insights
✔️ Top 5 revenue-generating regions  
✔️ High-value customers based on average spend  
✔️ Most frequently purchased & profitable products  
✔️ Channel-wise performance comparison  
✔️ Region-wise average order value  
✔️ Repeat customer identification


# Task No 4 | Elevate Labs Internship | Day 4 
# 💼 Financial Loan Dashboard – Power BI Project

This project is part of my internship at **Elevate Labs**, focused on designing a comprehensive, interactive **financial loan portfolio dashboard** using Power BI. It visualizes key business insights for stakeholders to drive strategic decisions in loan approval, marketing, and risk management.

## 📌 Task Objective

> **Create an end-to-end interactive dashboard** to help stakeholders:
- Understand loan issuance and repayment trends
- Analyze borrower behavior and risk
- Identify high-performing loan purposes and regions
- Predict revenue and suggest data-driven strategies

## 📊 Dashboard Overview

The Power BI dashboard is structured into **4 main pages**:

| Page | Title | Purpose |
|------|-------|---------|
| 1️⃣ | **Portfolio Overview** | High-level KPIs, loan types, repayment volume by region |
| 2️⃣ | **Risk & Borrower Profile** | DTI risk, loan term profitability, home ownership stats |
| 3️⃣ | **Loan Perfromamce Deatils** | Loan issuance over time, repayment trends, profit insights |

## 🧮 Key KPIs & Measures
- **Total Loan Issued**
- **Total Payment Received**
- **Average Interest Rate**
- **Delinquency Rate**
- **Net Profit per Loan**
- **DTI Risk Level Classification**
- **Revenue Forecast (monthly)**

## 🧠 Business Insights
- 🔺 High DTI borrowers (> 20%) account for the majority of defaults
- 💰 Credit card & debt consolidation loans yield highest net profit
- 🕒 60-month loans are more profitable, but riskier
- 🌎 Top-performing states by repayment: **California**, **Texas**, **New York**

## ✅ Recommendations
- Focus marketing efforts on **high-yield loan purposes**
- Tighten approval criteria for borrowers with **DTI > 0.2**
- Offer tailored plans in **top-performing states**
- Use risk-adjusted pricing based on **loan grade and income**

## 🚀 Tools Used
- Power BI Desktop
- DAX (Data Analysis Expressions)
- Data Modeling & Visualization
- Excel/CSV Dataset

## 📁 Files Included
- `Financial Dashboard.pbix` – Power BI Project File
- `Financial_Loan_Dashboard_Summary.pptx` – Presentation Summary
- `README.md` – Project Documentation
## 🙋‍♂️ About Me

👋 Hi, I'm **Asmit** – a Data Analyst Intern passionate about financial analytics, data storytelling, and building smart dashboards to solve real-world business problems.

📎 [LinkedIn](https://www.linkedin.com/in/analyticswithasmit)




# Task No 5 | Elevate Labs Internship | Day 5
# Exploratory Data Analysis on Titanic Dataset

### 🧾 Project Overview

This project involves performing **Exploratory Data Analysis (EDA)** on the Titanic dataset to understand survival factors and prepare a visual report. A complete **Jupyter Notebook** analysis was done and exported as a **PDF report**.

### 🔍 Objective
To analyze the Titanic dataset and uncover insights related to passenger survival based on:
- Age
- Sex
- Passenger Class (Pclass)
- Fare paid
- Family connections (SibSp, Parch)
- Embarkation port

### 📁 Files Included
- `Titanic.pdf`: Final PDF report exported from the Jupyter Notebook.
- `titanic.csv`: Titanic dataset used for analysis (assumed).
- `titanic_analysis.ipynb`: (Not shared here but assumed used for PDF export).

### 📊 Key Analysis Performed
- **Data Cleaning**:
  - Handled missing values (Age, Embarked)
  - Dropped `Cabin` due to high null percentage
- **Feature Engineering**:
  - Created `FamilySize`, `IsAlone`, and `AgeGroup` features
- **Visualizations**:
  - Correlation heatmaps
  - Countplots for survival vs. gender/class
  - Fare and Age distributions
  - Barplots for survival across new features
- **Insights**:
  - Higher survival among females and first-class passengers
  - Children had higher survival rates than adults
  - Family presence increased survival chances
  - Fare positively correlated with survival


### 🛠️ Tools & Libraries Used
- Python
- Jupyter Notebook
- Pandas, NumPy
- Matplotlib, Seaborn




# Task No 6 | Elevate Labs Internship | Day 6 
## 🛍️ E-Commerce SQL Analysis
This project presents a comprehensive SQL-based analysis of an e-commerce dataset. The goal is to extract actionable insights about customer behavior, revenue trends, product performance, and delivery metrics using structured queries only (no BI/visual tools used). The dataset includes orders, products, payments, customers, and sellers data.

## ✅ Objective
Analyze monthly revenue, order volume, customer patterns, and seller performance to support business decision-making through SQL.

## 🛠️ Tools Used
- **Database:** MySQL / PostgreSQL
- **Environment:** Local DB / Jupyter Notebook (SQL Magic)
- **Language:** SQL


## 🧩 Dataset Overview
The analysis uses the following tables:

| Table Name      | Description                                 |
|-----------------|---------------------------------------------|
| `orders`        | Order metadata, status, and timestamps      |
| `customers`     | Customer location and identifiers           |
| `order_items`   | Product-level order details                 |
| `payments`      | Payment methods and values                  |
| `products`      | Product dimensions and categories           |
| `sellers`       | Seller locations                            |
| `geolocation`   | Zip-code based coordinates and mapping      |

## 📂 Folder Structure
ecommerce-sql-analysis/ 
  │ ├── queries/ 
  │ └── ecommerce_analysis.sql # All SQL queries written for this analysis 
  │ ├── results/ 
  │ └── README.md

## 📌 Key SQL Queries

### 🔹 Basic Queries
- Unique customer cities
- Order count for 2017
- Total sales per product category
- Installment payment percentage
- Customer count by state

### 🔸 Intermediate Queries
- Monthly order trends in 2018
- Average products per order per city
- Revenue share by product category
- Correlation: product price vs order count
- Seller revenue ranking

### 🔹 Advanced Queries
- Moving average of order values per customer
- Cumulative monthly revenue
- YoY growth in sales
- Top 3 highest-spending customers by year

### 🧪 Ad-hoc Analysis
- Monthly revenue & order volume
- Top 3 revenue-generating months
- Monthly active customers
- Delivery performance status
- Payment value segmentation
- Regional classification of customers


## 🔍 Conclusion

This SQL-only project demonstrates strong analytical capabilities by:
- Deriving complex insights without external BI tools
- Using window functions, CTEs, and CASE logic
- Organizing queries from basic to advanced

The work showcases end-to-end data understanding using only SQL as a tool.


# Task No 7 | Elevate Labs Internship | Day 7
## 🚀 Project Overview
As part of my data analyst internship at **Elevate Labs**, Task 7 involved conducting a detailed analysis of Adidas's U.S. retail sales dataset using **SQL for data exploration** and **Matplotlib for data visualization**. The objective was to extract actionable business insights and present them clearly through code, queries, and plots.

## 📁 Dataset Summary
The dataset contains U.S. sales records for Adidas products across:
- 📅 Dates (`Order Date`)
- 🏬 Retailers
- 🛍️ Products
- 🌎 Regions & States
- 💰 Financial metrics: `Total Sales`, `Total Profit`, `Units Sold`, etc.
- 🔄 Sales Method: Online vs Offline

## 🎯 Business Questions Answered
1. **Top Products by Revenue** – What are the best-selling products?
2. **Regional Profit Analysis** – Which U.S. regions are most profitable?
3. **Retailer Performance** – Who delivers the best profit per unit sold?
4. **Monthly Revenue Trends** – How do sales vary over time?
5. **Low-Margin Products** – Which products sell well but earn less profit?
6. **Sales Channel Analysis** – Is Online or Offline more profitable?

## 🧠 Tools Used
- **SQLite** – SQL queries for aggregation, filtering, and grouping.
- **Pandas** – Data manipulation in Python.
- **Matplotlib** – Data visualization and plotting.
- **Jupyter Notebook** – Interactive development environment.

## 📈 Key Insights
- **Men's and Women's Footwear** drive the highest revenue.
- The **West region** outperforms others in terms of profit.
- Some retailers offer significantly better **profit per unit**.
- Strong **seasonal trends** observed in Q4.
- Online sales yield **higher margins**, while Offline drives volume.
- Certain products need **price adjustment** due to low profit margins.

## 📦 Folder Structure
├── adidas_sales_analysis.ipynb # Main analysis notebook 
├── adidas_sales.db # SQLite database 
├── README.md # This file

## 📝 Conclusion
This task demonstrated my ability to extract business intelligence from raw sales data using **SQL and Python**, produce clean visualizations, and draw strategic insights to aid data-driven decisions.

## 🧑‍💼 Author
**Asmit**  
Data Analyst Intern @ Elevate Labs  
[LinkedIn](https://www.linkedin.com/in/analyticswithasmit)  


