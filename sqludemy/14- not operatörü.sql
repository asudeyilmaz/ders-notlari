SELECT * 
FROM employees
WHERE manager_id NOT IN (100,108,114)

SELECT *
FROM employees
WHERE first_name NOT LIKE 'A%' 

SELECT *
FROM employees
WHERE salary NOT BETWEEN 4000 AND 7000
	AND job_id NOT IN (16)

SELECT *
FROM employees
WHERE NOT salary  BETWEEN 4000 AND 7000
	AND NOT job_id =16

SELECT *
FROM employees
WHERE NOT salary  BETWEEN 4000 AND 7000
	AND  job_id <>16

---dvd
SELECT title,rating, length
FROM film f
WHERE NOT f.rating = 'G' and not f.length <100


SELECT title,rating, length
FROM film f
WHERE f.rating != 'G' and  f.length >=100