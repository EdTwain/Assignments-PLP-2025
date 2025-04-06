-- 1. Retrieve checkNumber, paymentDate, and amount from the payments table
SELECT checkNumber, paymentDate, amount FROM payments;

-- 2. Retrieve orderDate, requiredDate, and status of orders that are 'In Process',
--    sorted in descending order of orderDate
SELECT orderDate, requiredDate, status 
FROM orders 
WHERE status = 'In Process' 
ORDER BY orderDate DESC;

-- 3. Display firstName, lastName, email, and employeeNumber of employees whose job title is 'Sales Rep',
--    ordered in descending order of employeeNumber
SELECT employeeNumber, firstName, lastName, email 
FROM employees 
WHERE jobTitle = 'Sales Rep' 
ORDER BY employeeNumber DESC;

-- 4. Retrieve all columns and records from the offices table
SELECT * FROM offices;

-- 5. Fetch productName and quantityInStock from the products table,
--    sorted in ascending order of buyPrice, limited to 5 records
SELECT productName, quantityInStock 
FROM products 
ORDER BY buyPrice ASC 
LIMIT 5;
