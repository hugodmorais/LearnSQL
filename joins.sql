-- AS
SELECT amount AS rental_price
FROM payment;

SELECT COUNT(amount) AS num_transactions
FROM payment;

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id

SELECT customer_id, SUM(amount) AS total_spent
FROM payment
GROUP BY customer_id
HAVING  SUM(amount) > 100

SELECT customer_id, amount AS total_spent
FROM payment
WHERE amount > 2