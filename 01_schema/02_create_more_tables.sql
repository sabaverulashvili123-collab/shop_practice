CREATE TABLE order_items (
order_item_id SERIAL PRIMARY KEY,
order_id INT,
product_id INT,
quantity INT CHECK(quantity > 0),
price NUMERIC(10,2) NOT NULL,
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (product_id) REFERENCES products(id)

);

CREATE TABLE payments (
     payment_id SERIAL PRIMARY KEY,
     order_id INT NOT NULL,
     payment_date DATE,
     amount NUMERIC(10,2) NOT NULL,
     payment_method VARCHAR(50),
     FOREIGN KEY (order_id) REFERENCES orders(order_id)

);