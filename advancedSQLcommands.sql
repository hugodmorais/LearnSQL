-- Show timestamp info
SHOW TIMEZONE  -- Europe/London

SELECT NOW() -- 2020-07-18 17:48:55.841129+01

SELECT TIMEOFDAY() -- Sat Jul 18 17:49:42.276848 2020 BST

SELECT CURRENT_DATE -- 2020-07-18

SELECT EXTRACT(YEAR FROM payment_date) AS year
FROM payment -- 2020

SELECT EXTRACT(MONTH FROM payment_date) AS month
FROM payment -- 2

SELECT EXTRACT(DAY FROM payment_date) AS day
FROM payment -- 15

SELECT AGE(payment_date)
FROM payment -- 13 years 5 mons 2 days 01:34:13.003423

SELECT TO_CHAR(payment_date, 'MONTH-YYYY')
FROM payment -- JUNE - 2020

SELECT TO_CHAR(payment_date, 'MONTH   YYYY')
FROM payment -- JUNE    2020

SELECT TO_CHAR(payment_date, 'mon/ddYYYY')
FROM payment -- Jun/15/2020

SELECT TO_CHAR(payment_date, 'MM/dd/YYYY')
FROM payment -- 02/15/2020

-- Calculations
SELECT rental_rate/replacement_cost FROM film

SELECT ROUND(rental_rate/replacement_cost, 2)*100 AS percentage_cost
FROM film

SELECT first_name || ' ' || last_name
FROM customer -- Jared Ely

SELECT LOWER(LEFT(first_name,1)) || ' ' || LOWER(last_name) || '@gmail.com'
FROM customer -- jely@gmail.com

-- SubQuery
SELECT student,grade
FROM test_scores
WHERE grade > (SELECT AVG(grade)
FROM test_scores) -- (SELECT AVG(grade) FROM test_scores) <-- This subquery runs first



