CREATE TABLE IF NOT EXISTS
	film_ratings (rating, film_count) AS
SELECT rating, COUNT (film_id)
FROM film
GROUP BY rating;


select * from film_ratings