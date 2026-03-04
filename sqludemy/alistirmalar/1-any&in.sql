-- "IT" ve "Finance" departmanlarında çalışan personelleri listele.
-- (Alt sorgu kullanarak yap.)

SELECT first_name, last_name
FROM employees
WHERE department_id IN 
	(
		SELECT department_id FROM departments WHERE department_name = 'IT' OR department_name ='Finance'
	)

-- Ortalama maaşı 5000’den büyük olan departmanlarda çalışan personelleri listele.
SELECT first_name, last_name
FROM employees
WHERE department_id IN
	(
		select department_id
		from employees 
		group by department_id
		having avg(salary) > 5000
	)
	
--Finance departmanındaki en az bir çalışandan daha fazla maaş alan personelleri listele.
SELECT first_name ,last_name
FROM employees
WHERE salary > ANY 
	(
		SELECT  salary
		FROM employees
		WHERE department_id IN
		(
			select department_id from departments where department_name = 'Finance'
		)
	)

-- En yüksek maaşa sahip departman(lar)da çalışan personelleri listele.
/*
Bu şu demek:
Her departmanın ortalama maaşını veya maksimum maaşını bul
En yüksek olan departmanı bul
O departmandaki çalışanları getir
*/

-- ın ile

SELECT first_name, last_name,department_id
FROM employees
WHERE department_id IN
	(
		SELECT department_id
		FROM employees
		GROUP BY department_id
		HAVING AVG(salary) =
		(
			SELECT MAX(avg_salary)
			FROM 
			(
				select AVG(salary) as avg_salary 
				from employees 
				group by department_id 
			)
		)
	)


