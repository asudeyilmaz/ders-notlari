EXPLAIN
SELECT * FROM film
WHERE description = 'drama';

CREATE INDEX idx_film_desc
ON film(description);
