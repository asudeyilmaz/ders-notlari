SELECT 
    m.first_name || ' ' || m.last_name manager,
    e.first_name || ' ' || e.last_name employee
FROM employees e
INNER JOIN employees m
  ON e.manager_id = m.employee_id
ORDER BY manager

SELECT
    f1.title, f2.title, f1.length
FROM film f1
INNER JOIN film f2 
    ON f1.film_id <> f2.film_id 
    AND f1.length = f2.length
