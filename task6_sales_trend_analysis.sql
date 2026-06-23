-- Create Table
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

-- Preview Data
SELECT * FROM online_sales
LIMIT 10;

-- Monthly Revenue and Order Volume Analysis
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