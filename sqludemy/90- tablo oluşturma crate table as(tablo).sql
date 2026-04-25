CREATE TABLE movies_copy AS
TABLE movies;

----------
CREATE TABLE movies_copy2 AS
TABLE movies
WITH NO DATA;




----içeriğini aktarmadan oluşturmak '1=0'
CREATE TABLE film_with_category_new AS
SELECT f.film_id , f.title, c.name
FROM film f, film_category fc, category c
WHERE
	1=0
	AND f.rating = 'R'
	AND fc.film_id = f.film_id
	AND fc.category_id = c.category_id 


select * from film_with_category_new