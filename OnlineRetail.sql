CREATE DATABASE OnlineRetail;
USE OnlineRetail;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50),
    signup_date DATE
);
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
CREATE TABLE Order_Details (
    order_id INT,
    product_id INT,
    quantity INT,
    subtotal DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_mode VARCHAR(50),
    payment_status VARCHAR(50),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);
-- Customers
INSERT INTO Customers VALUES
(1, 'Amit', 'amit@gmail.com', 'Delhi', '2024-02-15'),
(2, 'Sunil', 'sunil@gmail.com', 'Bangalore', '2024-03-10'),
(3, 'Riya', 'riya@gmail.com', 'Mumbai', '2024-03-25'),
(4, 'Anu', 'anu@gmail.com', 'Chennai', '2024-04-10');

-- Products
INSERT INTO Products VALUES
(101, 'Laptop', 'Electronics', 55000),
(102, 'Headphones', 'Electronics', 3000),
(103, 'Shoes', 'Fashion', 2500),
(104, 'Smartwatch', 'Electronics', 8000);

-- Orders
INSERT INTO Orders VALUES
(1, 1, '2024-03-10', 58000),
(2, 2, '2024-03-12', 11000),
(3, 3, '2024-03-25', 2500),
(4, 4, '2024-04-15', 8800);

-- Order Details
INSERT INTO Order_Details VALUES
(1, 101, 1, 55000),
(1, 102, 1, 3000),
(2, 103, 2, 5000),
(2, 104, 1, 6000),
(3, 103, 1, 2500),
(4, 104, 1, 8800);

-- Payments
INSERT INTO Payments VALUES
(1, 1, 'Credit Card', 'Success'),
(2, 2, 'UPI', 'Success'),
(3, 3, 'Cash', 'Failed'),
(4, 4, 'Credit Card', 'Success');
SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM Order_Details;
SELECT * FROM Payments;

