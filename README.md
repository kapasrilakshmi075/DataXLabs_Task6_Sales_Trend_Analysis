# 📊 DataXLabs Task 6 - Sales Trend Analysis Using Aggregations

## 📌 Objective
Analyze monthly revenue and order volume using SQL aggregation functions and identify sales trends over time.

---

## 🛠️ Tools Used
- PostgreSQL
- SQL
- pgAdmin 4

---

## 📂 Dataset
Online Sales Data Dataset

### Columns Used
- Transaction ID
- Order Date
- Product Category
- Product Name
- Units Sold
- Unit Price
- Total Revenue
- Region
- Payment Method

---

## 📈 SQL Concepts Applied
- SUM()
- COUNT()
- EXTRACT()
- GROUP BY
- ORDER BY
- Aggregate Functions

---

## 🗄️ Table Creation

```sql
CREATE TABLE online_sales (
    transaction_id INT,
    order_date DATE,
    product_category VARCHAR(100),
    product_name VARCHAR(255),
    units_sold INT,
    unit_price NUMERIC(10,2),
    total_revenue NUMERIC(10,2),
    region VARCHAR(100),
    payment_method VARCHAR(50)
);
```

### Screenshot

![Table Creation](Screenshots/01_Table_Creation.png)

---

## 🔍 Data Preview

```sql
SELECT * FROM online_sales
LIMIT 10;
```

### Screenshot

![Data Preview](Screenshots/02_Data_Preview.png)

---

## 📊 Monthly Sales Trend Analysis Query

```sql
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(total_revenue) AS monthly_revenue,
    COUNT(DISTINCT transaction_id) AS order_volume
FROM online_sales
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY year, month;
```

### Screenshot

![Sales Trend Query](Screenshots/03_Monthly_Sales_Query.png)

---

## 📉 Query Output

The query calculates:

- Monthly Revenue
- Monthly Order Volume
- Sales Trends Over Time

### Screenshot

![Query Output](Screenshots/04_Query_Output.png)

---

## 🎯 Outcome

Successfully analyzed monthly sales trends using SQL aggregation techniques.

Key Insights:
- Calculated monthly revenue using SUM()
- Calculated order volume using COUNT()
- Grouped data by year and month
- Identified sales performance trends over time

---

## 📁 Project Structure

```text
DataXLabs_Task6_Sales_Trend_Analysis
│
├── Dataset
│   └── Online Sales Data.csv
│
├── SQL
│   └── task6_sales_trend_analysis.sql
│
├── Screenshots
│   ├── 01_Table_Creation.png
│   ├── 02_Data_Preview.png
│   ├── 03_Monthly_Sales_Query.png
│   └── 04_Query_Output.png
│
└── README.md
```

---

## 🚀 Author

**Kapa Sri Lakshmi**  
B.Tech CSE | Data Analytics Enthusiast  
Mohan Babu University
