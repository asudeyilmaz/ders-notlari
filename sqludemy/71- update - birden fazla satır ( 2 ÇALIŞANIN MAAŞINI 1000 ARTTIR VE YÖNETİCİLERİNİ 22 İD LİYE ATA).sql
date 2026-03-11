-- 2 ÇALIŞANIN MAAŞINI 1000 ARTTIR VE YÖNETİCİLERİNİ 22 İD LİYE ATA
UPDATE employees
SET salary = salary + 1000,
	manager_id = 22
WHERE employee_id IN (13,14)


select * from employees
where employee_id in(13,14)