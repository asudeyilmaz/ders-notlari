SELECT first_name, last_name
FROM customer
WHERE first_name LIKE 'Ann%'

SELECT * 
FROM customer
WHERE first_name LIKE 'B%'

select *
from customer
WHERE first_name LIKE 'Be__'


--filmin son karakteri r
SELECT title
FROM film
WHERE title LIKE '%r'

--sondan 2.harfi u olan
SELECT title
FROM film
WHERE title LIKE '%u_'

-- içinde s harfi geçenler
SELECT title
FROM film
WHERE title LIKE '%s%'

--içerisinde a ve v veya A ve V geçenler
SELECT title
FROM film
WHERE title LIKE '%a%v%' OR title LIKE '%A%V%'

--ilk karakterden sonra her olan isimler
SELECT * 
FROM customer
WHERE first_name LIKE '_her%'