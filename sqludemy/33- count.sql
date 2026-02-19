SELECT COUNT(*) FROM actor;

SELECT COUNT(*) FROM film
WHERE rating = 'G'

SELECT COUNT(*) FROM film
WHERE description ilike '%drama%'

SELECT COUNT(*) FROM payment;


---  office db de phone number stunundaki null olmayan satır sayısı:
SELECT COUNT(phone_number) from employees;

select count(distinct rating) from film

select * from address
SELECT 
	COUNT(*) as all_rows ,
	COUNT(postal_code) as pc ,
	COUNT(DISTINCT district) as different_district 
FROM address