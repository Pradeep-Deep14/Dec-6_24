-- Create the sales table
CREATE TABLE sales (
    sale_id INT, 
    product_id INT, 
    sale_date DATE, 
    sales_amount DECIMAL(10, 2), 
    customer_id INT
);

-- Insert the data
INSERT INTO sales VALUES 
    (1, 1, '2024-01-10', 50000.00, 1001), 
    (2, 2, '2024-01-20', 70000.00, 1002), 
    (3, 1, '2024-02-10', 60000.00, 1001), 
    (4, 1, '2024-02-15', 40000.00, 1003);

-- Identify the sales percentage contribution of each product for each month
SELECT product_id, 
            EXTRACT(YEAR FROM sale_date) AS sale_year, 
            EXTRACT(MONTH FROM sale_date) AS sale_month, 
            sales_amount, 
            sales_amount * 100.0 / SUM(sales_amount) OVER (PARTITION BY EXTRACT(YEAR FROM sale_date), EXTRACT(MONTH FROM sale_date)) AS sales_percentage 
     FROM sales;
