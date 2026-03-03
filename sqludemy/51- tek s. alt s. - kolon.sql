--- departman ismini bul
SELECT 
	first_name,last_name,
	department_name, job_title
FROM employees e
INNER JOIN departments d
	ON d.department_id = e.department_id
INNER JOIN jobs j
	ON j.job_id = e.job_id
----- alt sorguda
--- avantaj : yukarıdakı "on" gibi şart ifadesi koymadıgımızdan dolayı istediğimiz kadar yazabiliriz
--- genelde bu yöntem tercih edilir çünkü sorgular bu kadar basit değildir çok daha uzun yazılır
--- bi tık ileri seviyesi bu alt sorguları fonksiyon yapıp ana sorguda kullanmaktır

SELECT
	first_name, last_name,
	(
		SELECT department_name FROM departments d
		WHERE d.department_id = e.department_id
	) dep_name,
	(
		SELECT job_title FROM jobs j WHERE j.job_id = e.job_id
	) as job_name
FROM employees e;


---
---çocukları çalışanlarıyla birlikte getir 
--çalışanların çocukları alt sorgu kullanılarak getirilcek
-- ailelerin isim ve soyisimleri birleştirilcek
select first_name || ' ' || last_name as children ,
	(	select e.first_name || ' ' || e.last_name  from employees e
		where e.employee_id = d.employee_id) as parent
from dependents d