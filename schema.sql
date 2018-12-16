DROP DATABASE if exists bamazonDB;
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
VALUES ("Staple Clip (pkg. of 20)", "Office Supplies", 12.00, 50, 4000.00),

	   ("Blender", "Household Items", 15.00, 100, 3000.00),
       
	   ("Chair", "Furniture", 50.00, 25, 0.00),
       
	   ("Dasani Water Bottles (pkg. of 25)", "Groceries", 32.00, 75, 4500.00),
       
	   ("Vacuum Cleaner", "Household Items", 340.00, 14, 4000.00),
       
	   ("Pitch Perfect", "Media", 19.99, 87, 0.00),
       
	   ("Starbucks K-Cups (pkg. of 20)", "Groceries", 7.50, 111, 3500.00),
       
	   ("Black Sharpie", "Office Supplies", 2.50, 200, 3500.00),
       
	   ("Scrabble", "Toys and Games", 13.50, 26, 5000.00),
       
	   ("End Table", "Household Items", 139.99, 19, 4500.00);

SELECT * FROM products;

CREATE TABLE departments (
	department_id INT AUTO_INCREMENT NOT NULL,
  department_name VARCHAR(100) NULL,
  over_head_costs DECIMAL(10,2) NULL,
  PRIMARY KEY (department_id)
);

-- default table vals --
INSERT INTO departments (department_name, over_head_costs)
VALUES ("Groceries", 2000), ("Funitures", 2000), ("Office Supply", 10000), ("Toys and Games", 2000), ("Household Items", 1000), ("Media", 1000); 
			 

-- view tables --
SELECT * FROM products;
SELECT * FROM departments;

-- inner join for profit query --
SELECT department_id, departments.department_name, over_head_costs, SUM(product_sales) AS product_sales,
	SUM(product_sales) - over_head_costs AS total_profit
FROM departments
INNER JOIN products
ON departments.department_name = products.department_name
GROUP BY department_id;