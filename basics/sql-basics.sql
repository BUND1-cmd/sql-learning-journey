-- =========================
-- SQL BASICS PRACTICE
-- =========================

-- -------------------------
-- SELECT
-- -------------------------
SELECT * FROM customers;

SELECT name, city
FROM customers;


-- -------------------------
-- WHERE
-- -------------------------
SELECT *
FROM customers
WHERE city = 'Nairobi';

SELECT *
FROM customers
WHERE age > 25;


-- -------------------------
-- AND / OR
-- -------------------------
SELECT *
FROM customers
WHERE city = 'Nairobi' AND age > 25;

SELECT *
FROM customers
WHERE city = 'Nairobi' OR city = 'Mombasa';


-- -------------------------
-- IN
-- -------------------------
SELECT *
FROM customers
WHERE city IN ('Nairobi', 'Mombasa', 'Kisumu');


-- -------------------------
-- BETWEEN
-- -------------------------
SELECT *
FROM customers
WHERE age BETWEEN 20 AND 30;


-- -------------------------
-- ORDER BY
-- -------------------------
SELECT *
FROM customers
ORDER BY age DESC;


-- -------------------------
-- GROUP BY
-- -------------------------
SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY city;


-- -------------------------
-- HAVING
-- -------------------------
SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY city
HAVING COUNT(*) > 2;


-- -------------------------
-- CASE WHEN
-- -------------------------
SELECT name,
CASE
    WHEN age >= 30 THEN 'Older'
    ELSE 'Younger'
END AS age_group
FROM customers;
