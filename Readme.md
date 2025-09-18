🛒 E-commerce Database (MySQL)
📌 Project Overview

This project is a relational database design for an E-commerce Store.
It includes:

Schema: Tables, constraints, and relationships

Triggers: Business logic for stock updates

Sample Data: Example users, products, orders, and payments

Queries: Useful SELECT statements for testing and reports

⚙️ Requirements

MySQL 8.0+ installed

A terminal or MySQL client

Git (optional, if cloning from GitHub)

🚀 Setup Instructions
1. Clone the Repository
git clone https://github.com/<your-username>/ecommerce-db.git
cd ecommerce-db

2. Start MySQL

Login to MySQL:

mysql -u root -p

3. Run Schema

Create the database and tables:

SOURCE /path/to/ecommerce_schema.sql;

4. Run Triggers
SOURCE /path/to/triggers.sql;

5. Insert Sample Data
SOURCE /path/to/insert_data.sql;

🔍 Testing the Database

Run these queries to check if everything works:

-- List all products with categories
SELECT p.name AS product, c.name AS category, p.price
FROM products p
JOIN categories c ON p.category_id = c.id;

-- Show orders with user info
SELECT o.id AS order_id, u.username, o.status, o.total_amount
FROM orders o
JOIN users u ON o.user_id = u.id;

-- Show payments with order and user
SELECT pay.id AS payment_id, u.username, pay.amount, pay.method, pay.status
FROM payments pay
JOIN orders o ON pay.order_id = o.id
JOIN users u ON o.user_id = u.id;

📂 Project Structure
📦 ecommerce-db
 ┣ 📜 ecommerce_schema.sql   # Database schema (tables + constraints)
 ┣ 📜 triggers.sql           # Business logic triggers
 ┣ 📜 insert_data.sql        # Sample data inserts
 ┣ 📜 queries.sql            # Example queries (joins & reports)
 ┣ 📜 README.md              # Project documentation

📝 Commit History

Add initial database schema with tables, constraints, and relationships

Add trigger to auto-update stock after successful payment

Add sample data for users, categories, products, orders, and payments

Add test queries to validate relationships and generate reports

✅ Notes

Make sure to drop and recreate the database if you want to reset:

DROP DATABASE ecommerce_store;
SOURCE ecommerce_schema.sql;


Use INSERT IGNORE in the sample data to avoid duplicate entry errors when re-running.