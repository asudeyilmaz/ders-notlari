
CREATE VIEW vw_emp_info AS
SELECT 
    e.employee_id, e.first_name, e.last_name,
    j.job_title, d.department_name
FROM employees e
    INNER JOIN jobs j USING(job_id)
    INNER JOIN departments d USING(department_id);


	---------------------------


DROP VIEW IF EXISTS vw_emp_info;

DROP VIEW IF EXISTS vw_cust_info;


--DROP a View - Dependency
--------------------------------------------

CREATE VIEW main_film AS
SELECT film_id, title, 
    length, c.name category
FROM film
    INNER JOIN film_category USING (film_id)
    INNER JOIN category c USING(category_id);

CREATE VIEW horror_film AS
SELECT film_id, title, length 
FROM main_film
WHERE category = 'Horror';

DROP VIEW main_film;

DROP VIEW main_film CASCADE;