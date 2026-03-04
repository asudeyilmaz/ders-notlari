--any nin karşılığı: .. < any : en büyükten daha küçük
SELECT salary FROM employees
WHERE 
	salary < 3000 OR 
	salary < 4000 OR
	salary < 5000 
ORDER BY salary;

--any nin karşılığı: .. > any : en küçükten daha büyük
SELECT salary FROM employees
WHERE 
	salary > 3000 OR 
	salary > 4000 OR
	salary > 5000 
ORDER BY salary;

-- en yüksek maaş alan programcıdan daha az maaş alan çalışanlar
SELECT 
	first_name, last_name, salary
FROM employees 
WHERE salary < ANY
	(
		SELECT salary
		FROM employees
		WHERE job_id = (select  job_id from jobs where job_title = 'Programmer')
	)
--- any kullanmadan
SELECT 
	first_name, last_name, salary
FROM employees 
WHERE salary < 
	(
		SELECT MAX(salary)
		FROM employees
		WHERE job_id = (select  job_id from jobs where job_title = 'Programmer')
	)




--------DVD


-- kategorilere göre sınıflayıp en uzun filmi getir
SELECT category_id , MAX(length)
FROM film
INNER JOIN  film_category fc USING(film_id)
GROUP BY category_id
ORDER BY 2

-----en küçükten daha büyük

SELECT title, length
FROM film
WHERE length > ANY 
(
	SELECT  MAX(length)
	FROM film
	INNER JOIN  film_category fc USING(film_id)
	GROUP BY category_id
)
ORDER BY 2

--- farklı bir versiyonu

SELECT title, length
FROM film
WHERE length > 
(
	SELECT MIN(max_value)
	FROM
	(
	SELECT  MAX(length) as max_value
	FROM film
	INNER JOIN  film_category fc USING(film_id)
	GROUP BY category_id
	) 
)
ORDER BY 2

----animasyon ve games kategorisindeki filmler

SELECT title, category_id
FROM film f , film_category c
WHERE
	1=1
	AND f.film_id =c.film_id
	AND category_id = ANY
	(
		SELECT category_id
		FROM category
		WHERE name in  ('Animation', 'Games')
	);

-------- IN İLE
SELECT title, category_id
FROM film f , film_category c
WHERE
	1=1
	AND f.film_id =c.film_id
	AND category_id IN
	(
		SELECT category_id
		FROM category
		WHERE name in  ('Animation', 'Games')
	);


--ALT SORGUSUZ YAPIMI

SELECT title,  ct.name
FROM film f , film_category c , category ct
WHERE
	1=1
	AND f.film_id =c.film_id
	AND ct.name in  ('Animation', 'Games')
	AND c.category_id = ct.category_id
	
