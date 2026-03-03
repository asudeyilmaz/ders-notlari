-- maaş aralıgı 5000 olan  meslekler
SELECT * FROM employees
WHERE job_id IN
	(
		SELECT job_id FROM jobs
		WHERE 5000 BETWEEN min_salary and max_salary
	)


------ japonyada yaşayan customers
-- IN bir ve birden fazla satır getirebilen alt sorgularda kullanılır
SELECT customer_id, first_name, last_name
FROM customer
WHERE address_id IN
	(
		SELECT address_id FROM address WHERE city_id IN
		(
			SELECT city_id FROM city WHERE country_id = 
			(
				SELECT country_id FROM country WHERE country = 'Japan'
			)
   	 	)
	)



--- çocuğu olan çalışanları listele

SELECT * FROM employees e
WHERE e.employee_id in
(
	select d.employee_id from dependents d
)
 -- inner join ile
 SELECT e.* FROM employees e
 INNER JOIN dependents d ON d.employee_id = e.employee_id
 -----------------------------

 -- belirli bir tarihte kiralanmış olan filmler
SELECT film_id, title, rating
FROM film
WHERE 	
	film_id IN
	(
		SELECT i.film_id
		FROM inventory i
		INNER JOIN rental r ON i.inventory_id = r.inventory_id
		WHERE 
			r.rental_date BETWEEN '2005-05-25' AND '2005-05-26'
	)

-- 
SELECT film_id, title, rating
FROM film
WHERE 	
	film_id IN
	(
		SELECT i.film_id
		FROM inventory i
		WHERE i.inventory_id IN
		(
			SELECT r.inventory_id FROM rental r
			WHERE 
			r.rental_date BETWEEN '2005-05-25' AND '2005-05-26'
		)
	)
---------------------

-- in içinde birden fala kolon kullanımı
SELECT title, rental_duration, length
FROM film gf
WHERE rating = 'G'
	AND (gf.rental_duration, gf.length) IN
	(
		SELECT lf.rental_duration, lf.length
		FROM film lf
		WHERE length > 170
	)