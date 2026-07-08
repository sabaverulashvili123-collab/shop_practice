CREATE TABLE customers ( 
     id SERIAL PRIMARY KEY,
      name VARCHAR(100),
      email VARCHAR(100)
);

CREATE TABLE products (
id SERIAL PRIMARY KEY,
product_name VARCHAR(100),
price NUMERIC(10,2),
category VARCHAR(50)
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    status VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);