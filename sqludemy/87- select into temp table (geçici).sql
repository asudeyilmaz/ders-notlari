SELECT film_id, title, length
	INTO TEMP TABLE long_film
FROM film
WHERE length > 150
ORDER BY title;

select * from long_film;