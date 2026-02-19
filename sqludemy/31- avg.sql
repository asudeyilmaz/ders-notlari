SELECT
	AVG(length * 60) as avg_length,
	AVG(rental_duration) AS avg_rental_duration,
	AVG(replacement_cost) as avg_replacement_cost
FROM film;
SELECT
	AVG(length ) as avg_length,
	AVG(DISTINCT length ) as avg_length2
FROM film;

SELECT
	ROUND(AVG(length),2) as avg_length,
	ROUND(AVG(rental_duration),2) AS avg_rental_duration,
	ROUND(AVG(replacement_cost),2) as avg_replacement_cost
FROM film;
SELECT
	AVG(length)::numeric(10,2) as avg_length,---numeric 10 virgülden önce 10 rakamı göster 2 iste virrülgen sonra 2 rakamı göster
	AVG(rental_duration)::numeric(10,2) AS avg_rental_duration,
	AVG(replacement_cost)::numeric(10,2) as avg_replacement_cost
FROM film;

SELECT
	ROUND(AVG(length)) as avg_length,
	ROUND(AVG(rental_duration)) AS avg_rental_duration,
	ROUND(AVG(replacement_cost)) as avg_replacement_cost
FROM film;

