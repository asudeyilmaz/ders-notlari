SELECT
	customer_id,
	SUM(amount) sum_amount
FROM payment
GROUP BY customer_id
HAVING SUM(amount) >150

SELECT 
	customer_id,
	count(*)
FROM rental
GROUP BY customer_id
having count(*) > 35