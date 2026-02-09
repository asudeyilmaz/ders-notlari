SELECT 'Computer Engineer';
SELECT 'I''m a Computer Engineer' ;

SELECT E'I\'m a computer engineer' ;

SELECT customer_id || E'\'s: '
	|| first_name || ' '
	|| last_name
FROM customer;

SELECT  first_name || ' ' || last_name as full_name
FROM customer;
