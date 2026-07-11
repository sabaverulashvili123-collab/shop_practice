--1 CASE WHEN functions

SELECT product_id, product_name, price,
CASE WHEN price < 500 THEN 'Budget'
WHEN price BETWEEN 500 AND 1000 THEN 'Mid range'
WHEN price > 1000 THEN 'Premium'
ELSE 'Unknown'
END AS price_level
FROM products; 

SELECT product_name, price
CASE WHEN price < 300 THEN 'Cheap'
 WHEN price BETWEEN 300 AND 1000 AND stock > 10 THEN 'Normal'
 WHEN price > 1000 THEN 'Premium'
 ELSE 'Check'
 END AS price_category
 FROM  products;

 SELECT product_name, stock, price,
 CASE WHEN stock = 0 THEN 'out of stock'
 WHEN stock BETWEEN  1 AND 10 THEN 'Low stock'
 WHEN stock > 10 AND price > 1000 THEN 'High value item'
 ELSE 'Available'
 END AS stock_status
 FROM products;

 SELECT product_name, category, price, 
 CASE WHEN price < 100 THEN 'No discount'
 WHEN category = 'Electronics' AND price > 1000 THEN '20% discount'
 WHEN category = 'Furniture' AND price > 500 THEN '10% discount'
 ELSE '5% discount' 
 END AS discount_level
 FROM products;