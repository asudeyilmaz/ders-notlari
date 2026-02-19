SELECT 
    MIN(salary) min_salary,
    MAX(salary) max_salary,
    MIN(hire_date) min_hire_date,
    MAX(hire_date) max_hire_date,
	MIN(first_name),
	MAX(first_name)
FROM employees;


SELECT
    MIN(length) min_length,
    MAX(length) max_length,
    MAX(replacement_cost) max_replacement_cost,
    MAX(rental_duration) - MIN(rental_duration) dif_rental_duration
FROM film;

SELECT
	MIN(LENGTH(CONCAT(first_name , last_name))) min_number_of_letters,
	MAX(LENGTH(CONCAT(first_name , last_name))) max_number_of_letters,
	ROUND(AVG((LENGTH(CONCAT(first_name , last_name)))),2) avg_number_of_letters
FROM employees;