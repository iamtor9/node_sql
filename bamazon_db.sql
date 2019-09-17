/*Challenge #1: Customer View (Minimum Requirement)
/*Create a MySQL Database called bamazon.*/
DROP DATABASE IF EXISTS bamazon_db;
-- Creates the "_db" database --
CREATE DATABASE bamazon_db;

-- Makes it so all of the following code will affect bamazon_db --
USE bamazon_db;

CREATE TABLE products (

  id INT,
  product_name VARCHAR(45) NULL,
  dept_name DECIMAL(10,2) NULL,
  price INT NULL,
  stock_quantity INT(2) NULL,
  PRIMARY KEY (id) 
);


-- Creates new rows containing data in all named columns --
INSERT INTO products (id, product_name, dept_name, price, stock_quantity)
VALUES (0, "Four Roses", 1.0, "89", 20);

INSERT INTO products (id, product_name, dept_name, price, stock_quantity)
VALUES (1, "Jack Daniels Honey", 1.0, "69", 20);

INSERT INTO products (id, product_name, dept_name, price, stock_quantity)
VALUES (2, "Makers Mark", 1.0, "79", 20);

INSERT INTO products (id, product_name, dept_name, price, stock_quantity)
VALUES (3, "Jameson", 2.0, "19", 20);

INSERT INTO products (id, product_name, dept_name, price, stock_quantity)
VALUES (4, "Henny", 3.0, "29", 20);

INSERT INTO products (id, product_name, dept_name, price, stock_quantity)
VALUES (0, "Four Roses", 1.0, "89", 20);

INSERT INTO products (id, product_name, dept_name, price, stock_quantity)
VALUES (1, "Jack Daniels Honey", 1.0, "69", 20);

INSERT INTO products (id, product_name, dept_name, price, stock_quantity)
VALUES (2, "Makers Mark", 1.0, "79", 20);

INSERT INTO products (id, product_name, dept_name, price, stock_quantity)
VALUES (3, "Jameson", 2.0, "19", 20);

INSERT INTO products (id, product_name, dept_name, price, stock_quantity)
VALUES (4, "Henny", 3.0, "29", 20);