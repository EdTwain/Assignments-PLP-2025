INSERT INTO payments (checkNumber, paymentDate, amount) VALUES
('CHK1001', '2025-03-01', 250.75),
('CHK1002', '2025-03-05', 500.00),
('CHK1003', '2025-03-10', 1200.50);

INSERT INTO orders (orderDate, requiredDate, status) VALUES
('2025-03-01', '2025-03-10', 'In Process'),
('2025-03-05', '2025-03-15', 'Shipped'),
('2025-03-08', '2025-03-18', 'Cancelled'),
('2025-03-10', '2025-03-20', 'In Process');

INSERT INTO employees (firstName, lastName, email, jobTitle) VALUES
('John', 'Doe', 'johnson@gmail.com', 'Sales Rep'),
('Jane', 'Smith', 'jamesmith@gmail.com', 'Sales Rep'),
('Alice', 'Brown', 'alicebrown@gmail.com', 'Manager');

INSERT INTO offices (city, phone, addressLine1, addressLine2, state, country, postalCode, territory) VALUES
('Nairobi', '+254700123456', '1st Avenue', NULL, 'Nairobi', 'Kenya', '00100', 'East Africa'),
('Mombasa', '+254720987654', 'Ocean Road', 'Near Beach', 'Mombasa', 'Kenya', '80100', 'Coast');

INSERT INTO products (productName, quantityInStock, buyPrice) VALUES
('Laptop', 50, 750.00),
('Smartphone', 100, 500.00),
('Tablet', 30, 300.00),
('Headphones', 150, 50.00),
('Smartwatch', 40, 200.00);
 


