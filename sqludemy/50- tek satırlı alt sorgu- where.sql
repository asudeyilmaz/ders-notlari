--- ortalama maaştan daha yüksek maaş alan personeller

SELECT * FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees)


--- belirlenmiş filmle aynı uzunluğa sahip filmler

---  SELECT length FROM film WHERE title ='Godfather Diary'
SELECT title, length, rating
FROM film
WHERE length = (SELECT length FROM film WHERE title ='Godfather Diary')


----7
--- japonyanın şehirleri
--- select country_id from country where country = 'Japan'

select *
from city
where country_id = (select country_id from country where country = 'Japan'
)


--- birden fazla kolon
SELECT * from film
where (length, rating) =
	(select length, rating from film where title = 'Home Pity')