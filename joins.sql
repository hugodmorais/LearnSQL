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

SELECT * 
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id

SELECT * FROM Registrations
LEFT OUTER JOIN Logins
ON Registrations.name = Logins.name

SELECT district, email
FROM address
INNER JOIN customer
ON address.address_id = customer.address_id
WHERE district = 'California'

SELECT title, first_name, last_name FROM actor
INNER JOIN film_actor
ON actor.actor_id = film_actor.actor_id
INNER JOIN film
ON film_actor.film_id = film.film_id
WHERE first_name = 'Nick' AND
last_name = 'Wahlberg'