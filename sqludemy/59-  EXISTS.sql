-- ÖDEME YAPMIŞ MÜŞTERİLERİ BUL
SELECT first_name, last_name
FROM customer c
WHERE
    EXISTS 
    (
        SELECT 1
        FROM payment p
        WHERE p.customer_id = c.customer_id
    );
--------------ın ile
SELECT first_name, last_name
FROM customer c
WHERE
  c.customer_id  IN 
    (
        SELECT p.customer_id
        FROM payment p
    );

--------------KANADA DA BULUNAN DEPARTMANLAR exists ile
select * from departments d
where exists
  (
    select 1 from locations l
    where l.location_id = d.location_id
      and country_id in 
        (
           select country_id from countries
           where country_name = 'Canada'
        )
  )


----------in ile 

 ----------- in ile
 select * from departments d
where d.location_id in
  (
    select l.location_id 
	from locations l
      where country_id in 
        (
           select country_id from countries
           where country_name = 'Canada'
        )
  )


--- YÖNETİCİ POZİSYONUNDA ÇALIŞANLAR EXISTS ILE 
SELECT *
FROM employees e
WHERE
	EXISTS
	(
		SELECT 1
		FROM jobs j
		WHERE j.job_id = e.job_id 
			AND LOWER(job_title) LIKE '%manager%'
	)

--- YÖNETİCİ POZİSYONUNDA OLMAYAN ÇALIŞANLAR NOT EXISTS ILE 
SELECT *
FROM employees e
WHERE
	NOT EXISTS
	(
		SELECT 1
		FROM jobs j
		WHERE j.job_id = e.job_id 
			AND LOWER(job_title) LIKE '%manager%'
	)
