-- Connect to MySQL as root
-- mysql -u root -p

-- Create a new database
CREATE DATABASE IF NOT EXISTS inventoryDB;
USE inventoryDB;

-- Create a table named products
CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    quantity INT NOT NULL,
    category VARCHAR(100) NOT NULL
);

-- Insert sample product records
INSERT INTO products (name, description, price, quantity, category) VALUES
('Product 1', 'Description 1', 10.99, 100, 'Category A'),
('Product 2', 'Description 2', 15.49, 50, 'Category B'),
('Product 3', 'Description 3', 8.99, 200, 'Category A'),
('Product 4', 'Description 4', 12.99, 150, 'Category C'),
('Product 5', 'Description 5', 5.99, 300, 'Category B');

-- Retrieve all products
SELECT * FROM products;

-- Retrieve products with a price less than a specified amount
-- Replace 10.00 with the specified amount
SELECT * FROM products WHERE price < 10.00;

-- Retrieve products with more than a specified quantity in stock
-- Replace 100 with the specified quantity
SELECT * FROM products WHERE quantity > 100;

-- Update the price of a specific product
-- Replace 'Product 2' with the specific product name and 14.99 with the new price
UPDATE products SET price = 14.99 WHERE name = 'Product 2';

-- Delete a product from the products table
-- Replace 'Product 5' with the specific product name
DELETE FROM products WHERE name = 'Product 5';
