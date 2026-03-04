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