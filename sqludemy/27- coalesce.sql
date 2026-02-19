--- coalesce ilk null olmayanı döndürür
--- tüm değerler nullsa null döner 
--- ver tipleri birbiri ile uyumlu olmalıdır.
SELECT 
	COALESCE(1,2,3) C1,
	COALESCE(NULL,2,3) C2,
	COALESCE(NULL,NULL,3) C3

SELECT phone_number,
	COALESCE(phone_number, 'No phone number')
FROM employees;

--- test
select
	brand, price, discount,
	(price - discount) as net_price
	
from cars;
select
	brand, price, discount,
	(price - coalesce(discount,0)) as net_price
from cars;