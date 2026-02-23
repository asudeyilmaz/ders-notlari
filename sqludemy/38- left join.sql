SELECT
    a.film_id, a.title, b.inventory_id
FROM film a
LEFT JOIN inventory b ON b.film_id = a.film_id
ORDER BY title;

SELECT
    a.film_id, a.title, b.inventory_id
FROM film a
LEFT JOIN inventory b USING (film_id)
ORDER BY title;

SELECT 
    e.first_name, e.last_name,
    d.first_name child_first_name, 
d.last_name child_last_name
FROM employees e
LEFT JOIN dependents d
     ON d.employee_id = e.employee_id