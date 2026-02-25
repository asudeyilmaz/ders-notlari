---union all filtreleme yapmadan  kesişimdeki tüm sorguları getirir
select first_name, last_name, job_id, salary
from employees
where salary between 8000 and 12000
UNION ALL
select first_name, last_name, job_id, salary
from employees
where job_id in (2,7,10,14,15,19)
order by 1,2;

---------
SELECT title, length, rating
FROM film
WHERE length < 50
UNION ALL
SELECT title, length, rating
FROM film
WHERE rating = 'PG'
UNION ALL
SELECT title, length, rating
FROM film
WHERE rating = 'R'
ORDER BY title;


---alıştırma

select 'Country' as place_type,
country_id as plade_id, 
country as place_name
from country
union all
select 'City' as place_type, 
city_id as plade_id,
city as place_name
from city
union all
select 'Address' as place_type, 
address_id as plade_id,
address as place_name
from address
order by 2