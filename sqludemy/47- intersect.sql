select first_name, last_name, job_id, salary
from employees
where salary between 8000 and 12000
INTERSECT
select first_name, last_name, job_id, salary
from employees
where job_id in (2,7,10,14,15,19)
order by 1,2;

---

select title, description, length, rating  
from film
where rating = 'G'
intersect
select title, description, length, rating 
from film
where length > 170