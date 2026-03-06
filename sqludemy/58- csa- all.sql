-- = <,> operatörleri ile kullanılır
-- < ALL en küçükten daha küçük
-- > ALL en büyükten daha büyük
--- != ALL => NOT IN


--- < ALL :
SELECT salary FROM employees
WHERE 
	salary < 3000 AND
	salary < 4000 AND
	salary < 5000 
ORDER BY salary

--- > ALL
SELECT salary FROM employees
WHERE 
	salary > 3000 AND
	salary > 4000 AND
	salary > 5000 
ORDER BY salary


--- 1 NOLU YÖNETİCİYE BAĞLI OLAN ÇALIŞANLARDAN DAHA FAZLA MAAŞ ALAN ÇALIŞANLAR
SELECT first_name, last_name, salary
FROM employees
WHERE salary > ALL 
	(
		SELECT salary
		FROM employees
		WHERE manager_id = 1
	)
--- all kullanmadan
SELECT first_name, last_name, salary
FROM employees
WHERE salary >  
	(
		SELECT MAX(salary)
		FROM employees
		WHERE manager_id = 1

	)

	
SELECT film_id, title, length
FROM film
WHERE
	length <
	(
		select MIN((avg_length)) FROM
		(
			SELECT ROUND(AVG(length),2) avg_length
			FROM film
			GROUP BY rating
		) sb
	
	) 
order by 3 desc;


--ALL İLE
SELECT film_id, title, length
FROM film
WHERE
	length < ALL			
		(
			SELECT ROUND(AVG(length),2) 
			FROM film
			GROUP BY rating
		) 
	
order by 3 desc;
