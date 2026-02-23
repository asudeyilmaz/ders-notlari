--- on
SELECT
    id_a, fruit_a,
    id_b, fruit_b
FROM basket_a
INNER JOIN basket_b
    ON fruit_a = fruit_b

SELECT 
    c.customer_id,
    first_name, last_name,
    amount, payment_date
FROM customer c
INNER JOIN payment p
    ON p.customer_id = c.customer_id
ORDER BY payment_date;

--* with using
SELECT customer_id,
    first_name, last_name,
    amount, payment_date
FROM customer
INNER JOIN payment USING(customer_id)
ORDER BY payment_date;

--- classic
SELECT c.customer_id,
    first_name, last_name,
    amount, payment_date
FROM customer c, payment p
WHERE p.customer_id = c.customer_id
ORDER BY payment_date;


---341 NO LU MÜŞTERİNİN TÜM ÖDEMELERİ VE BU ÖDEMELERİ KİME YAPTIĞI

SELECT 
	c.customer_id,
	c.first_name,
	c.last_name,
	p.amount,
	s.first_name,
	s.last_name
FROM payment p
INNER JOIN customer c
ON c.customer_id = p.customer_id 
INNER JOIN staff s
ON s.staff_id =p.staff_id
WHERE c.customer_id = 341

-----------kalsik yöntemle 
SELECT c.customer_id,
    c.first_name, c.last_name,
    amount, s.first_name, s.last_name
FROM customer c, payment p , staff s
WHERE p.customer_id = c.customer_id and s.staff_id = p.staff_id and c.customer_id = 341


---office db 
select first_name,
	last_name,
	department_name
from departments
inner join employees using(department_id)
order by first_name

