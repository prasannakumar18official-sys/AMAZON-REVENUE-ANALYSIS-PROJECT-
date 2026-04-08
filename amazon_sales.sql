CREATE DATABASE amazon_sales_analysis;
USE amazon_sales_analysis;
select * from amazon_sales_data
limit 5;
SELECT COUNT(*) AS total_products
FROM amazon_sales_data;
SELECT AVG(price) AS average_price
FROM amazon_sales_data;
SELECT product_category, COUNT(*) AS total_products
FROM amazon_sales_data
GROUP BY product_category
ORDER BY total_products DESC;
SELECT product_category, rating
FROM amazon_sales_data
ORDER BY rating DESC
LIMIT 5;
SELECT product_category, discount_percent
FROM amazon_sales_data
ORDER BY discount_percent DESC
LIMIT 10;
SELECT product_category, review_count
FROM amazon_sales_data
ORDER BY review_count DESC
LIMIT 5;
SELECT product_category,(rating) AS avg_rating
FROM amazon_sales_data
GROUP BY product_category
ORDER BY avg_rating DESC;
SELECT product_category,price,discounted_price,(price - discounted_price) AS price_difference
FROM amazon_sales_data
ORDER BY price_difference DESC;
SELECT product_category, rating
FROM amazon_sales_data
WHERE rating < 3;