SELECT fruit_a FROM basket_a
EXCEPT
SELECT fruit_b FROM basket_b


------


select first_name, last_name, job_id, salary
from employees
where salary between 8000 and 12000
EXCEPT
select first_name, last_name, job_id, salary
from employees
where job_id in (2,7,10,14,15,19)
order by 1,2;

--------------------

select film_id , title
from film
except
select distinct f.film_id, title
from inventory i
inner join film f
	on f.film_id = i.film_id

-----------------NOT IN
select film_id , title
from film
where film_id not in
	(
		select distinct film_id
		from inventory i
	)

---------------------------NOT EXISTS
select film_id , title
from film f
where not exists
	(
		select 1
		from inventory i
		where f.film_id = i.film_id
	)


--------------------
(
	SELECT title, description, length, rating
	FROM film
	WHERE length > 170
	UNION
	SELECT title, description,length,rating
	FROM film
	WHERE rating = 'G'
)
EXCEPT 
SELECT title, description, length,rating
FROM film
WHERE rating = 'G'
	AND rental_duration < 5
