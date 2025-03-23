CREATE DATABASE business_db;
USE business_db;

CREATE TABLE payments (
    checkNumber VARCHAR(50) PRIMARY KEY,
    paymentDate DATE NOT NULL,
    amount DECIMAL(10,2) NOT NULL
);

CREATE TABLE orders (
    orderID INT AUTO_INCREMENT PRIMARY KEY,
    orderDate DATE NOT NULL,
    requiredDate DATE NOT NULL,
    status ENUM('In Process', 'Shipped', 'Cancelled') NOT NULL
);

CREATE TABLE employees (
    employeeNumber INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    jobTitle VARCHAR(50) NOT NULL
);

CREATE TABLE offices (
    officeID INT AUTO_INCREMENT PRIMARY KEY,
    city VARCHAR(50) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    addressLine1 VARCHAR(100) NOT NULL,
    addressLine2 VARCHAR(100),
    state VARCHAR(50),
    country VARCHAR(50) NOT NULL,
    postalCode VARCHAR(20) NOT NULL,
    territory VARCHAR(50) NoT NULL
);

CREATE TABLE products (
    productID INT AUTO_INCREMENT PRIMARY KEY,
    productName VARCHAR(100) NOT NULL,
    quantityInStock INT NOT NULL,
    buyPrice DECIMAL(10,2) NOT NULL

);
