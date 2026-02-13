SELECT title ,
--- tüm harfleri küçkü yapar
	LOWER(title) lo_title,
	--- tüm harfleri buyuk yapar
	UPPER(title) up_title,
	---- her kelimenin ilk harfini büyük yapar
	INITCAP(title) ic_title
FROM film;

SELECT * 
FROM film
WHERE LOWER(title) LIKE '%trip%'


---ALISTIRMA
SELECT 
	UPPER(title) as title_new,
	LOWER(description) as description_new
FROM film
WHERE LOWER(description) LIKE '%australia%' 
	AND LOWER(description) LIKE '%drama%'
	
------------------****************-------------------
SELECT 
	UPPER(title) as title_new,
	LOWER(description) as description_new
FROM film
WHERE description ILIKE '%australia%' 
	AND description ILIKE '%drama%'

