SELECT TO_DATE('20230405', 'YYYYMMDD') TD1,
		TO_DATE('2023 APRIL 05', 'YYYY MONTH DD') TD2,
		TO_DATE('2023 april 05','YYYY month DD') TD3,
		TO_DATE('2023 APR 05', 'YYYY MON DD') TD4,
		TO_DATE('2023 240', 'YYYY DDD') TD5, -----YILIN GUNLERİ
		TO_DATE('February 08, 2023', 'Month DD, YYYY') TD6;


SELECT date_value_str,
to_date(date_value_str, 'MONTH DD YYYY') FROM date_demo
WHERE  value_id= 7