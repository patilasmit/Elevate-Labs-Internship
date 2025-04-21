# Elevate-Labs-Internship

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


## 📁 Files

| File | Description |
|------|-------------|
| `Data Cleaning and Preprocessing Task.ipynb` | Full notebook with code |
| `README.md` | Project summary and documentation |

