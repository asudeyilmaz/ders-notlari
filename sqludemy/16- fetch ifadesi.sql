SELECT film_id, title
FROM film
ORDER BY title
FETCH FIRST ROW ONLY;

SELECT film_id, title
FROM film
ORDER BY title
FETCH FIRST 1 ROW ONLY;

SELECT film_id, title
FROM film
ORDER BY title
LIMIT 1

------------

SELECT film_id, title
FROM film
 ORDER BY  title
 OFFSET 5 ROWS
 FETCH FIRST 6 ROW ONLY


 SELECT film_id,title
 FROM film
 ORDER BY title
 LIMIT 6 OFFSET 5


