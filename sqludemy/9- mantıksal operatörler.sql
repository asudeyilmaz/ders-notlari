SELECT title , length, rental_duration FROM film
WHERE length > 100
	AND rental_duration < 5;

SELECT * FROM address
WHERE district = 'Adana'
	AND city_id = 5;

SELECT * FROM payment
WHERE staff_id =2
	OR amount >5;



---office tablosu için

SELECT * FROM employees
WHERE department_id =1;
	OR salary < 3000

SELECT * FROM employees
WHERE job_id 9
	AND salary > 5000;