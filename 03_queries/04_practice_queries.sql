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

