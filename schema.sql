CREATE DATABASE bamazonDB;

USE bamazonDB;

CREATE TABLE products(
item_id INT (10) NOT NULL AUTO_INCREMENT,
product_name VARCHAR (255) NOT NULL,
department_name VARCHAR(255) NOT NULL,
price DECIMAL(10,2) DEFAULT 0,
stock_quantity INT (10) DEFAULT 0,
product_sales DECIMAL(10,2) DEFAULT 0,
PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
VALUES ("Binder Clips (pkg. of 20)", "Office Supplies", "12.00", "50", "0.00"),
	   ("Coffee Mug", "Household Items", "15.00", "100", "0.00"),
	   ("100-Piece Puzzle", "Toys and Games", "9.00", "25", "0.00"),
	   ("Dasani Water Bottles (pkg. of 25)", "Groceries", "32.00", "75", "0.00"),
	   ("Dyson Vacuum Cleaner", "Household Items", "340.00", "14", "0.00"),
	   ("Pitch Perfect", "Media", "19.99", "87", "0.00"),
	   ("Starbucks K-Cups (pkg. of 20)", "Groceries", "7.50", "111", "0.00"),
	   ("Black Sharpie", "Office Supplies", "2.50", "200", "0.00"),
	   ("Scrabble", "Toys and Games", "13.50", "26", "0.00"),
	   ("End Table", "Household Items", "139.99", "19", "0.00");


