SELECT * FROM film
WHERE  length BETWEEN 100 AND 120

select * from film
WHERE not(length BETWEEN 101 AND 121)

SELECT * FROM film
WHERE  length < 100 OR length > 120

--office
SELECT * FROM employees
WHERE hire_date BETWEEN '2017-01-01' and '2017-12-31'
ORDER BY hire_date;

SELECT * FROM employees
WHERE first_name BETWEEN 'A' AND 'E'
ORDER BY first_name;


--test
--- '2022-05-01' tarihinde kimler çalısıyordu?

select * from staff


select * from staff
where '2022-05-01' between hire_date and departure_date