-- çalışanların bulundugu ve şehirleri getiren tablo
SELECT 
	e.first_name, e.last_name,
	dl.department_name, dl.city , dl.state_province
FROM employees e,
	(
		SELECT
			d.department_id , d.department_name,
			l.city, l.state_province
			FROM departments d, locations l
			WHERE d.location_id = l.location_id
	) dl
WHERE e.department_id = dl.department_id