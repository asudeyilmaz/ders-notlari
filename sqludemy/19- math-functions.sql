SELECT ROUND(14.45), ---- içindeki sayılara bakarak YUVARLAMA İŞLEMİ
ROUND(14.45, 1),
ROUND(14.43,1),
ROUND(14.467,2),
	CEIL(14.45), -- her zaman bi üste yuvarlar
	FLOOR(14.45), -- her zaman bir alta yuvarlar
	ABS(-5.78), -- mutlak değer
	POWER(4,3), --- 4ün 3. kuvveti
	SIGN(-5),  --- verilen sayının negatif mi pozitifmi gösterir
	SIGN(5),
	TRUNC(4869.98), --- tam sayıuı yazar
	TRUNC(4869.98, 1),
	TRUNC(4869.98,2),
	TRUNC(4869.98, -1) ---sayı doğrusu gibi sola doğru 1 ini sıfırlar


---------------------

SELECT payment_id, amount,
		(amount * 0.45) as percent_amount,
		ROUND(amount * 0.45) as f_round,
		CEIL(amount* 0.45) as f_ceil,
		FLOOR(amount * 0.45) as f_floor,
		TRUNC(amount * 0.45) as f_trunc,
		MOD(amount, 5) as f_mod
FROM payment
LIMIT 10;


SELECT random();  ---- 0 - 1 arasdında sayı üretir

SELECT random() * 100 +1 as ran_num; --- 100 - 1 arası

SELECT floor(random() * 100 +1)::int as ran_num --- tam sayıda üretir

--- select floor(random()* (high - low + 1) + low)::int 

select floor(random()* (200 - 100 + 1) + 100)::int  as ran_num --- 100-200 arası sayı üretir
from generate_series(1, 10) --- bundan 10 kere çalıştır
