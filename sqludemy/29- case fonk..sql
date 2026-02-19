
--- CASE IF ELSE MANTIGIDIR
--- general ve simple formları var

--general form
case
	when condition_1 then result_1
	.
	.
	.
	[else else_result]
end

--- simple form
case [expr]
	when comparison_expr_1 then return_expr_1
	.
	.
	.
	[else else_expr]
end


-- ör general form
SELECT title, length,
	CASE
		WHEN length between 0 and 50 THEN 'Short length'
		WHEN length >=51 AND length <= 120 THEN 'Medium length'
		WHEN length >  120 THEN 'Long length'
END duration
FROM film
ORDER BY title;

--- ör simple form
SELECT title, rating,
	CASE rating
		WHEN 'G' THEN 'GENERAL AUDİENCES'
		WHEN 'PG' THEN 'PARENTAL..'
		WHEN 'PG-13' THEN 'PARENTS STRONGLY CAUTİONED'
		WHEN 'R' THEN 'RESTRİCTED'
		WHEN 'NC-17' THEN 'ADULTS ONLY'
		ELSE NULL
	END rating_description
	
FROM film
ORDER BY title;


--BİRLEİŞİMİ
SELECT title, rating,
	CASE rating
		WHEN 'G' THEN 'GENERAL AUDİENCES'
		WHEN 'PG' THEN 'PARENTAL..'
		WHEN 'PG-13' THEN 'PARENTS STRONGLY CAUTİONED'
		WHEN 'R' THEN 'RESTRİCTED'
		WHEN 'NC-17' THEN 'ADULTS ONLY'
		ELSE NULL
	END rating_description,
	CASE
		WHEN length between 0 and 50 THEN 'Short length'
		WHEN length >=51 AND length <= 120 THEN 'Medium length'
		WHEN length >  120 THEN 'Long length'
END duration
	
FROM film
ORDER BY title;

---ÖR office
SELECT first_name, last_name, job_id,
	CASE
		--WHEN job_id in (2,7,10,14,15,19) THEN 'Manager Positions'
		WHEN job_id in (select job_id from jobs where lower(job_title) like '%manager%') THEN 'Manager Positions'
		--WHEN job_id in (13,17,18) THEN 'Clerk Positions'
		--alt sorgu yaparak daha güvenli ulaş
		WHEN job_id in (select job_id from jobs where lower(job_title) like '%clerk%') THEN 'Clerk Positions'
		ELSE 'Other Positions'
	END position_type
FROM employees;

select * from jobs where lower(job_title) like '%clerk%'

SELECT first_name, last_name, hire_date , salary,
	CASE
		WHEN date_part('year', hire_date) between 2018 and 2020 then salary * 1.25
		WHEN date_part('year', hire_date) < 2018 then salary * 1.35
		WHEN date_part('year', hire_date) > 2020 then salary * 1.15
	END new_salary
FROM employees