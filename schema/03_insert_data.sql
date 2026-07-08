INSERT INTO customers (name, email)
VALUES 
('Ako Bagdasarian', 'ako@example.com'),
('Ernest  Babayan', 'ernest@example.com'),
('Beka Dudashvili', 'beka@example.com'),
('Giviko Natsvaladze', 'giviko@example.com'),
('Luka Tordua', 'luka@example.com'),
('Sandro Saladze', 'sandro@example.com'),
('Ato Mamardashvili', 'ato@example.com'),
('Merab Doiashvili', 'merab@example.com'),
('Dato Chikhladze', 'dato@example.com'),
('Salome Kalandadze', 'salome@example.com')
('Saba Verulashvili','saba@example.com'),
('Nika Chitidze', 'nikush@example.com'),
('Gio Javashvili', 'gio@example.com'),
('Vato Sanaia', 'vato@example.com');

INSERT INTO products (product_name, price, category)
VALUES
('Laptop', 1500, 'Electronics'),
('Gaming mouse', 200, 'Gaming'),
('Office chair', 300, 'Furniture'),
('Smartphone', 2000, 'Electronics'),
('Webcam', 100, 'Accessories'),
('Keyboard', 100, 'Accessories'),
('Sofa', 1000, 'Furniture'),
('Monitor', 500, 'Electronics'),
('Gaming headset', 400, 'Gaming'),
('TV', 2000, 'Electronics'),
('Gaming pc', 4000, 'Gaming'),
('Office table', 2000, 'Furniture'),
('Gaming console', 3000, 'Gaming'),
('Mouse pad', 50, 'Accessories'),
('Refrigerator', 4000, 'Electronics');

INSERT INTO orders (customer_id, order_date, status)
VALUES
(1,'2026-04-17','Completed'),
(1,'2026-01-10', 'Completed'),
(2,'2026-07-01', 'Completed'),
(2,'2026-07-05', 'Pending'),
(3,'2026-03-10', 'Cancelled'),
(4,'2026-02-16', 'Completed'),
(4,'2026-01-28', 'Completed'),
(5,'2026-07-02', 'Pending'),
(6,'2026-05-30', 'Completed'),
(7,'2026-01-03', 'Cancelled'),
(7,'2026-01-04', 'Completed'),
(7,'2026-02-11', 'Completed'),
(7,'2026-03-19', 'Completed'),
(7,'2026-04-20', 'Completed'),
(7,'2026-07-05', 'Pending'),
(8,'2026-04-01', 'Cancelled'),
(1,'2026-06-11', 'Cancelled'),
(9,'2026-06-08','Completed'),
(9,'2026-01-11','Completed'),
(9,'2026-02-16','Cancelled'),
(10,'2026-01-06', 'Cancelled'),
(10,'2026-02-02', 'Cancelled'),
(10, '2026-05-01', 'Completed'),
(10,'2026-07-07', 'Pending');

INSERT INTO order_items (order_id, product_id, quantity, price)
VALUES
(1, 1, 1, 1500),
(1, 14, 1, 50),

(2, 8, 2, 500),

(3, 4, 1, 2000),
(3, 5, 1, 100),

(4, 13, 1, 3000),

(5, 3, 2, 300),

(6, 6, 1, 100),
(6, 8, 2, 500),

(7, 7, 1, 1000),

(8, 11, 1, 4000),

(9, 15, 1, 4000),

(10, 2, 1, 200),
(10, 14, 2, 50),

(11, 10, 1, 2000),

(12, 9, 1, 400),

(13, 1, 1, 1500),
(13, 6, 1, 100),

(14, 12, 1, 2000),

(15, 4, 2, 2000),

(16, 5, 1, 100),
(16, 8, 1, 500),

(17, 3, 1, 300),

(18, 13, 1, 3000),

(19, 2, 2, 200),

(20, 7, 1, 1000),

(21, 10, 1, 2000),

(22, 14, 3, 50),

(23, 11, 1, 4000),
(23, 9, 1, 400),

(24, 1, 1, 1500),
(24, 5, 2, 100);

INSERT INTO payments (order_id, payment_date, amount, payment_method)
VALUES
(1,'2026-04-17',1550,'Card'),
(2,'2026-01-10',1000,'Cash'),
(3,'2026-07-01',2100,'Bank Transfer'),
(6,'2026-02-16',1100,'Card'),
(7,'2026-01-28',1000,'Card'),
(9,'2026-05-30',4000,'Bank Transfer'),
(11,'2026-01-04',2000,'Cash'),
(12,'2026-02-11',400,'Cash'),
(13,'2026-03-19',1600,'Bank Transfer'),
(14,'2026-04-20',2000,'Cash'),
(18,'2026-06-08',3000,'Card'),
(19,'2026-01-11',400,'Card'),
(23,'2026-05-01',4400,'Bank Transfer');

