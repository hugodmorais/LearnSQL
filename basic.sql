-- Select all
SELECT * FROM film;
-- Select column or columns
SELECT name, actor FROM film;
-- Distinct
SELECT DISTINCT rating FROM film;
-- Count
SELECT COUNT(*) FROM film;
-- Count an Distinct
SELECT COUNT(DISTINCT(amount)) FROM payment; 
-- Select WHERE
SELECT * FROM film
WHERE film_id = 133;
-- AND
SELECT * FROM film
WHERE film_id = 133
AND title = 'Chamber Italian';
-- ORDER BY
SELECT column_1, column_2
FROM table
ORDER BY column_1 ASC/DESC
-- ORDER BY more columns
SELECT company,name,sales FROM table
ORDER BY company,sales
-- LIMIT 
SELECT email FROM customer
LIMIT 5;
-- BETWEEN
SELECT * FROM payment
WHERE amount BETWEEN 8 AND 9;
-- IN
SELECT * FROM payment
WHERE amount IN (0.99,1.98,1.99);

SELECT * FROM payment
WHERE amount NOT IN (0.99,1.98,1.99);
--LIKE and ILIKE
SELECT * FROM customer
WHERE first_name LIKE 'J%'
AND last_name LIKE 'S%';

SELECT * FROM customer
WHERE first_name ILIKE 'J%'
AND last_name ILIKE s%';


