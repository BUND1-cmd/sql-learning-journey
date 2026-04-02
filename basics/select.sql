-- My first SQL query
SELECT * FROM customers;

-- Select only names and cities
SELECT name, city
FROM customers;

-- Customers from Nairobi
SELECT *
FROM customers
WHERE city = 'Nairobi';
