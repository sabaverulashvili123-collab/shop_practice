SELECT product_name, price 
FROM products 
ORDER BY price DESC;

SELECT custumer_name,
FROM customers;

SELECT product_name, price
FROM products
WHERE price > 50
ORDER BY price ASC; 

SELECT name, email
FROM customers
WHERE id = 3 ;

SELECT name, email
FROM customers
WHERE id = 2 OR id = 5 ; 

SELECT name, email 
FROM customers
WHERE id IN (2, 3, 8) ; 

SELECT product_name, price
FROM products
WHERE id IN (1, 3, 5);

SELECT order_id, status
FROM orders
WHERE status IN ('Completed', 'Pending');

SELECT product_name, price
FROM products
WHERE price BETWEEN 50 AND 200;

SELECT product_name, price
FROM products
WHERE price BETWEEN 100 AND 500
ORDER BY price DESC;

SELECT name, email
FROM customers 
WHERE email LIKE '%@%';

SELECT customer_id, COUNT(*) AS orders_count
FROM orders
GROUP BY customer_id;

SELECT status, COUNT(*) AS status_count
FROM orders
GROUP BY status;

SELECT order_id, SUM(quantity) AS total_quantity 
FROM order_items
GROUP BY order_id;
 
SELECT product_id, SUM(quantity) AS total_sold
FROM order_items
GROUP BY product_id;

SELECT product_id, SUM(quantity) AS total_quantity,
COUNT(order_id) AS orders_count
FROM order_items
GROUP BY product_id;

SELECT category, AVG(price) AS average_price, COUNT(*) AS product_count
FROM products 
GROUP BY category;