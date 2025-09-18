USE ecommerce_store;

-- Insert Users
INSERT IGNORE INTO users (username, email, password_hash, created_at)
VALUES
('john_doe', 'john@example.com', 'hashed_password1', NOW()),
('jane_smith', 'jane@example.com', 'hashed_password2', NOW());

-- Insert Categories
INSERT IGNORE INTO categories (name, description)
VALUES
('Electronics', 'Devices and gadgets'),
('Clothing', 'Apparel and accessories');

-- Insert Products (with SKU)
INSERT IGNORE INTO products (name, description, price, stock_quantity, category_id, created_at, sku)
VALUES
('Smartphone', 'Latest Android smartphone', 699.99, 50, 1, NOW(), 'ELEC-001'),
('Laptop', '15-inch laptop with 16GB RAM', 1199.99, 30, 1, NOW(), 'ELEC-002'),
('T-shirt', 'Cotton T-shirt', 19.99, 100, 2, NOW(), 'CLOTH-001');

-- Insert Orders (valid ENUM statuses: pending, processing, shipped, delivered, cancelled)
INSERT IGNORE INTO orders (user_id, order_date, status, total_amount)
VALUES
(1, NOW(), 'pending', 699.99),
(2, NOW(), 'shipped', 1219.98);

-- Insert Order Items
INSERT IGNORE INTO order_items (order_id, product_id, quantity, price)
VALUES
(1, 1, 1, 699.99),
(2, 2, 1, 1199.99),
(2, 3, 1, 19.99);

-- Insert Payments (valid ENUM statuses: pending, success, failed | method is REQUIRED)
INSERT IGNORE INTO payments (order_id, amount, payment_date, method, status)
VALUES
(1, 699.99, NOW(), 'mpesa', 'success'),
(2, 1219.98, NOW(), 'credit_card', 'success');
