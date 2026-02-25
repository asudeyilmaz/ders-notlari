---- union kesişimde ortak olanlardan 1 er tane getirir
--- bağlanan sorgular aynı karakter tipinde olmalıdır str=Str vs.. 1.sorgununu 1.kolonu ile 2.sorgunun 2.kolonu aynı tipte olur bu şekildesırası devam eder
-- unionda her sorgu aynı sayıda kolona sahip olmalıdır.
SELECT fruit_a, id_a ---alttaki sorguda da 2 kolon istemelidir
FROM basket_a
UNION
SELECT fruit_b
FROM basket_b

--dvd
select title,length, rating
from film
where rating = 'PG'
union
select title,length, rating
from film
where special_features::varchar like '%Trailers%'


--office
select first_name, last_name, job_id, salary
from employees
where salary between 8000 and 12000
UNION
select first_name, last_name, job_id, salary
from employees
where job_id in (2,7,10,14,15,19)
order by 1,2;
