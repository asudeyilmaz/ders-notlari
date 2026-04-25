----kalıcı
CREATE TABLE horror_film AS 
SELECT 
	film_id, title,
	release_year,
	length, rating
FROM film
INNER JOIN film_category USING (film_id)
WHERE category_id = 11;

select * from horror_film


-----geçici
CREATE TEMP TABLE horror_film2 AS 
SELECT 
	film_id, title,
	release_year,
	length, rating
FROM film
INNER JOIN film_category USING (film_id)
WHERE category_id = 11;

select * from horror_film2