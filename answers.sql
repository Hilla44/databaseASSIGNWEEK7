-- Week 7 Database Assignment

use salesdb;
-- Create the table structure
CREATE TABLE CustomerOrders (
    OrderID INT primary key,
    First_Name VARCHAR(50),
    Second_name VARCHAR(50),
    Product1 VARCHAR(50),
    Product2 VARCHAR(50),
    Product3 VARCHAR(50)
);

-- Insert the sample data
INSERT INTO CustomerOrders (OrderID, First_Name, Second_name, Product1, Product2, Product3) VALUES
(101, 'John', 'Doe', 'Laptop', 'Mouse', NULL),
(102, 'Jane', 'Smith', 'Tablet', 'Keybord', 'Mouse'),
(103, 'Emily', 'Clark', 'Phone', NULL, NULL);

-- Query to display the data
SELECT * FROM CustomerOrders;

-- question2
use salesdemo;
create database salesdemo;
use salesdemo;
-- Step 1: Create Orders table to store order and customer information
CREATE TABLE CustomerOrders (
    OrderID INT PRIMARY KEY,
    Customer_First_Name VARCHAR(100),
    Customer_Second_Name VARCHAR(100),
    Product1 VARCHAR(50),
    Product2 VARCHAR(50),
    Product3 VARCHAR(50)
);
-- Insert the sample data
INSERT INTO CustomerOrders (OrderID, Customer_First_Name, Customer_Second_name, Product1, Product2, Product3) VALUES
(101, 'John', 'Doe', 'Laptop', 'Mouse', NULL),
(102, 'Jane', 'Smith', 'Tablet', 'Keybord', 'Mouse'),
(103, 'Emily', 'Clark', 'Phone', NULL, NULL);

-- Query to display the data
 SELECT * FROM CustomerOrders;

-- Step 2: Create OrderItems table to store product information for each order
CREATE TABLE OrderItems (
    OrderID INT,
    Customer_First_Name VARCHAR(100),
    Customer_Second_Name VARCHAR(100),
    Product VARCHAR(50),
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Customerorders(OrderID)
);

-- Insert data with commas between values
INSERT INTO OrderItems (OrderID, Customer_First_Name, Customer_Second_Name, Product, Quantity) VALUES
(101, 'John', 'Doe', 'Laptop', 2),
(101, 'John', 'Doe', 'Mouse', 1),
(102, 'Jane', 'Smith', 'Tablet', 3),
(102, 'Jane', 'Smith', 'Keyboard', 1),
(102, 'Jane', 'Smith', 'Mouse', 2),
(103, 'Emily', 'Clark', 'Phone', 1);


-- Verify the results
SELECT * FROM Customerorders;
SELECT * FROM OrderItems;

--  Optional - Drop the original table if no longer needed
-- DROP TABLE OrderDetails;

-- drop table orderDetails;