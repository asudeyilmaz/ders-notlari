SELECT first_name, last_name,
	CONCAT(first_name, ' ', last_name) as f1,
	CONCAT_WS(',', first_name, last_name) as f2,
	LEFT(first_name, 2) as f3,
	RIGHT(first_name, 3) as f4,
	phone_number,
	LPAD(phone_number, 14, '00') as  f6,
	RPAD(phone_number, 14, '00') as f7,
	LPAD('123456' , 4, '0') f8
FROM employees;

-----

SELECT first_name, last_name,
	LENGTH(last_name||first_name) as f5,
	REPLACE(first_name, 'e', ' * ') as f8,
	SPLIT_PART(hire_date::varchar, '-',2) as f9,
	SUBSTRING(last_name, 2,3) as f10,
	POSITION('a' in first_name) as f11,
	REVERSE(first_name) as f12
FROM employees;

 --ALIŞTIRMA 3 farklı yöntemle hunter
 --dvdrental
SELECT title, description
FROM film
where description like '%Hunter%'

select title, description
from film
where initcap(description) like '%Hunter%'

select title, description from film
where position('Hunter' in description) > 0



--ALIŞTIRMA 3 FARKLI YÖNTEMLE BOŞLUK BIRAKARAK birleştir  FN LN EMAİL
SELECT first_name, last_name, email,
	CONCAT(first_name , ' ', last_name, ' ', email ) as f1,
	CONCAT_WS(' ', first_name,last_name, email) as f2,
	first_name || ' ' || last_name || ' ' || email as f3
FROM employees

