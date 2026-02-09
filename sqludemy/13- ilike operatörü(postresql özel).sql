-- büyük küçük hassasiyeti önemsemez postreSQL ye özeldir.
SELECT first_name, last_name
FROM customer
WHERE first_name ILIKE 'CAR%'