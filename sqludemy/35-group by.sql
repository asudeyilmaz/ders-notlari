SELECT
 	customer_id,
	 SUM(amount),
	 count(*)
FROM payment
GROUP BY customer_id

SELECT
	rating,
	COUNT(*) count_film,
	SUM(length) sum_length,
	SUM(rental_duration) sum_rental_duration,
	SUM(replacement_cost) sum_replacement_cost
FROM film
GROUP BY rating
ORDER BY rating;


SELECT
	customer_id,
	COUNT(*) numberof_rentals,
	MIN(rental_date)::date first_rental_date,
	MAX(rental_date) last_rental_date
FROM rental
GROUP BY customer_id

SELECT 
	rating, special_features,
	COUNT(*) numberof_films
FROM film
GROUP BY rating, special_features
ORDER BY rating, special_features

SELECT
	department_id , manager_id,
	COUNT(*) numberof_emp
FROM employees
GROUP BY department_id, manager_id
ORDER BY 1,2;


SELECT 
	sum(case rating when 'PG' THEN 	1 ELSE 0 end) as rating_pg,
	sum(case rating when 'NC-17' THEN 	1 ELSE 0 end) as rating_n17
FROM film


----office
 SELECT
	job_id,
	COUNT(*) numberof_emp,
	MIN(salary) min_salary,
	MAX(salary) max_salary
FROM employees
GROUP BY job_id
ORDER BY 1 ;