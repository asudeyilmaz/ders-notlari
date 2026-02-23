SELECT 
    e.first_name || ' ' || e.last_name employee,
    d.department_name
FROM employees e
NATURAL JOIN departments d;

SELECT 
    e.first_name || ' ' || e.last_name employee,
    d.department_name
FROM employees e
INNER JOIN departments d USING(department_id);


--- 2 tane aynı ad kolon varsa empty boş gelir ör:
select * 
from city natural join country