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

SELECT customer_id, COUNT(*) AS orders_count
FROM orders 
GROUP BY customer_id; 

SELECT order_id, SUM(quantity) AS total_quantity,
SUM(quantity * price) AS total_amount
FROM order_items
GROUP BY order_id;

SELECT category, AVG(price) AS avg_price, 
COUNT(*) AS product_amount
FROM products 
GROUP BY category;

SELECT product_id, COUNT(DISTINCT order_id) AS orders_count,
SUM(quantity) AS total_quantity, 
SUM(quantity*price) AS total_revenue,
AVG(price) AS avg_price
FROM order_items
GROUP BY product_id;

SELECT MIN(price) AS cheapest_price
FROM products;

SELECT MAX(price) AS highest_price
FROM products;

SELECT product_id, MIN(price) AS cheapest_price,
MAX(price) AS highest_price
FROM order_items
GROUP BY product_id;

SELECT product_id, MIN(price) AS cheapest_price,
MAX(price) AS highest_price,
AVG(price) AS avg_price
FROM order_items
GROUP BY product_id;


SELECT product_id, MIN(price) AS cheapest_price,
MAX(price) AS highest_price,
AVG(price) AS avg_price,
COUNT(*) AS times_ordered
FROM order_items
GROUP BY product_id;

SELECT product_id, COUNT(*) AS times_ordered
FROM order_items
WHERE quantity >= 2
GROUP BY product_id
HAVING COUNT(*) >= 2;

SELECT id,product_name, price 
FROM products;

SELECT * 
FROM orders
WHERE status = 'Completed'
ORDER BY order_date DESC;

 SELECT customer_id, COUNT(order_id) AS orders_count
FROM orders
GROUP BY customer_id;


 SELECT * FROM products
 WHERE price BETWEEN 30 AND 150
 ORDER BY price ASC;

SELECT id, name, email
FROM customers
WHERE name LIKE 'A%';

SELECT product_id, COUNT(product_id) AS product_amount
FROM order_items
GROUP BY product_id;

SELECT product_id,  SUM(quantity) AS total_quantity
FROM order_items
GROUP BY product_id;

SELECT product_id, MIN(price) AS cheapest_price,
MAX(price) AS highest_price, 
AVG(price) AS avg_price
FROM order_items
GROUP BY product_id;

SELECT customer_id, COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id
ORDER BY COUNT(*) DESC;

SELECT product_id, COUNT(product_id) AS  total_amount,
SUM(quantity) AS total_sold,
SUM(quantity * price) AS total_revenue,
AVG(price) AS avg_price
FROM order_items
GROUP BY product_id
ORDER BY SUM(quantity * price) DESC;

SELECT * FROM order_items
WHERE price > 100;

SELECT product_id, COUNT(*) AS total_count
FROM order_items
GROUP BY product_id
HAVING COUNT(*) > 2;

SELECT product_id, COUNT(*) AS total_count
FROM order_items
WHERE price > 100
GROUP BY product_id
HAVING COUNT(*) > 2 ;

SELECT product_id, COUNT(*) AS total_count,
SUM(quantity) AS total_amount, AVG(price) AS avg_price,
MAX(price) AS highest_price
FROM order_items
WHERE price >= 50
GROUP BY product_id
HAVING SUM(quantity) > 15
ORDER BY total_amount DESC;

SELECT product_id, COUNT(*) AS total_count,
 SUM(quantity * price) AS total_revenue
FROM order_items
WHERE quantity >= 2
GROUP BY product_id
HAVING SUM(quantity * price) > 1000
ORDER BY total_revenue DESC, product_id ASC;

SELECT product_id, COUNT(*) AS total_orders,
SUM(quantity) AS total_quantity,
SUM(quantity * price) AS total_revenue,
AVG(price) AS avg_price,
MIN(price) AS cheapest_price,
MAX(price) AS highest_price
FROM order_items
WHERE price BETWEEN 50 AND 300
GROUP BY product_id
HAVING COUNT(*) >= 3  AND SUM(quantity) > 10
ORDER BY total_revenue DESC, avg_price DESC;

SELECT product_id, COUNT(DISTINCT order_id) AS orders_count
SUM(quantity) AS total_quantity,
SUM(quantity * price) AS total_revenue,
AVG(price) AS avg_price,
MAX(price) AS highest_price,
MIN(price) AS cheapest_price
FROM order_items
GROUP BY product_id
HAVING COUNT(*) > 5 
AND SUM(quantity) > 100 
AND SUM(quantity * price) > 10000
ORDER BY total_revenue DESC;

SELECT product_id, COUNT(*) AS orders_count,
SUM(quantity) AS total_quantity,
COUNT(DISTINCT price) AS different_prices,
SUM(quantity * price) AS total_revenue, 
AVG(price) AS avg_price,
MIN(price) AS cheapest_price
FROM order_items
GROUP BY product_id
HAVING AVG(price) > 200 
AND  MIN(price) < 50 
AND COUNT(DISTINCT price) >= 3
ORDER BY avg_price DESC;

SELECT product_id, COUNT(DISTINCT order_id) AS orders_count,
SUM(quantity) AS total_quantity,
SUM(quantity * price) AS total_revenue,
AVG(price) AS average_price,
MAX(price) AS highest_price
FROM order_items
GROUP BY product_id
HAVING COUNT(DISTINCT order_id) > 10
AND SUM(quantity) > 200
AND MAX(price) < 1000
AND SUM(quantity * price) > 2000
ORDER BY total_revenue DESC, total_quantity DESC;