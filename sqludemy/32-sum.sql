SELECT
    SUM(length) as sum_length,
    SUM(rental_duration) as sum_rental_duration,
    SUM(replacement_cost) as sum_replacement_cost
FROM film;

SELECT 
    SUM(salary) as sum_manager_sal,
    ROUND(AVG(salary),2) as avg_manager_sal
FROM employees
WHERE job_id in (2,7,10,14,15,19) –--manager positios;

select * from rental

select
	sum(return_date - rental_date) as r2
from rental

