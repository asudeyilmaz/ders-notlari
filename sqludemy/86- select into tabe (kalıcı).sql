SELECT f.film_id, f.title, c.name
	INTO TABLE film_with_category
FROM film f, film_category fc, category c
WHERE
	1=1
	AND f.rating = 'R'
	AND fc.film_id = f.film_id
	AND fc.category_id = c.category_id
ORDER BY title;

select * from film_with_category

--------

SELECT f.film_id, f.title, c.name, length(f.title) as title_length
	INTO TABLE film_with_category2
FROM film f, film_category fc, category c
WHERE
	1=1
	AND f.rating = 'R'
	AND fc.film_id = f.film_id
	AND fc.category_id = c.category_id
ORDER BY title;


select * from film_with_category2
