SELECT film_id, title
FROM film
ORDER BY film_id
LIMIT 10 OFFSET 2

SELECT * 
FROM actor
ORDER BY first_name, last_name
LIMIT 5