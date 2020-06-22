-- Most common
AVG()
COUNT()
MAX()
MIN()
SUM()

-- example
SELECT MAX(replacement_cost) FROM film;
--
SELECT MIN(replacement_cost) FROM film;
--
SELECT MAX(replacement_cost),  MIN(replacement_cost)
FROM film;
--
SELECT COUNT(*) FROM film;
--
SELECT AVG(replacement_cost) FROM film;
--
SELECT ROUND(AVG(replacement_cost), 2) FROM film;

-- GROUP BY
SELECT customer_id, staff_id, SUM(amount) FROM payment
GROUP BY staff_id,customer_id
ORDER BY customer_id;

SELECT staff_id, COUNT(amount) FROM payment
GROUP BY staff_id;

SELECT rating, AVG(replacement_cost) FROM film
GROUP BY rating;

-- HAVING
SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100