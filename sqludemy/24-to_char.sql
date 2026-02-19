SELECT payment_id, payment_date, amount,
       TO_CHAR(payment_date, 'HH24:MI:SS')            as TC1,
       TO_CHAR(payment_date, 'MON-DD-YYYY HH12:MI PM') as TC2,
       TO_CHAR(payment_date, 'DD.MM.YYYY HH24:MI')    as TC3,
       TO_CHAR(payment_date, 'MON-DAY-YYYY HH12:MI')  as TC4,
       TO_CHAR(payment_date, 'Month DD, YYYY')        as TC5,
       TO_CHAR(payment_date, 'YYYYMMDD')              as TC6,
       TO_CHAR(amount,       '99D99')                 as TC7
FROM payment;

SELECT customer_id
		 || ' paid: ' ||
		 TO_CHAR(amount,'$99D99')
		 || ' at ' ||
		 TO_CHAR(payment_date, 'HH24:MI:SS')
		 || ' on ' ||
		 TO_CHAR(payment_date, 'Mon-DD-YYYY') as p_info
FROM payment
order by rental_id
limit 5;


