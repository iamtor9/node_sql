/*Challenge #1: Customer View (Minimum Requirement)

-- Challenge #1: Customer View (Minimum Requirement)
-- Create a MySQL Database called bamazon.X
-- Then create a Table inside of that database called products.X
-- The products table should have each of the following columns:X


/*Create a MySQL Database called bamazon.*/
DROP DATABASE IF EXISTS bamazon_db;
-- Creates the "_db" database --
CREATE DATABASE bamazon_db;

-- Makes it so all of the following code will affect bamazon_db --
USE bamazon_db;

-- item_id (unique id for each product)X
-- product_name (Name of product)X
-- department_nameX price (cost to customer)
-- stock_quantity (how much of the product is available in stores)

--table creation
CREATE TABLE whiskey (

  id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(45) NULL,
  dept_name DECIMAL(10,2) NULL,
  price INT NULL,
  stock_quantity INT(1000) NULL,
  PRIMARY KEY (id) 
);


-- Create new rows containing data above for all columns --
--10 rows with different whisk/ and their values, for the columns id,product_name, dept_name, price, stock_quant
INSERT INTO whiskey (product_name, dept_name, price, stock_quantity)
VALUES ("Four Roses", 1.0, "89", 20);

INSERT INTO whiskey (product_name, dept_name, price, stock_quantity)
VALUES ("Jack Daniels Honey", 1.0, "69", 20);

INSERT INTO whiskey (product_name, dept_name, price, stock_quantity)
VALUES ("Makers Mark", 1.0, "79", 20);

INSERT INTO whiskey (product_name, dept_name, price, stock_quantity)
VALUES ("Jameson", 2.0, "19", 20);

INSERT INTO whiskey (product_name, dept_name, price, stock_quantity)
VALUES ("Japanese Harmony", 3.0, "99", 20);


INSERT INTO whiskey (product_name, dept_name, price, stock_quantity)
VALUES ("Jonnie Walker", 1.0, "89", 20);

INSERT INTO whiskey (product_name, dept_name, price, stock_quantity)
VALUES ("Mortlach Rare", 1.0, "69", 20);

INSERT INTO whiskey (product_name, dept_name, price, stock_quantity)
VALUES ("Whiskey Del Bac", 1.0, "79", 20);

INSERT INTO whiskey (product_name, dept_name, price, stock_quantity)
VALUES ("Ranger Creek Rimfire", 2.0, "19", 20);

INSERT INTO whiskey (product_name, dept_name, price, stock_quantity)
VALUES ("Kavalan", 3.0, "29", 20);