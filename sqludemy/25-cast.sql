---- veri tipi dönüştürme
select
	cast('100' as INTEGER) as cast1,
	cast('2021-01-01' as date) as cast2,
	cast('15-OCT-2022'as date) as cast3,
	cast('10.25' as double precision) as cast4,
	cast('true' as boolean) as cast5,
	cast('T' as boolean) as cast7,
	cast('F' as boolean) as cast6;

---diğer yazım örneği
select
		'100'::integer as cast1,
		'01-OCT-2015'::date as cast2,
		598::varchar as cast3,
		'2019-06-15 14:30:20'::timestamp as cast4,
		'15 minute'::interval as cast5,
		'2 hour'::interval as cast6,
		'1 day'::interval as cast7,
		'2 week'::interval as cast8,
		'3 month'::interval as cast9;

SELECT 
	CAST ('2 year 5 months 3 days' AS INTERVAL),
	CAST (2800 AS MONEY),
	CAST(CURRENT_DATE AS TEXT),
	CAST('34.56' AS DOUBLE PRECISION)
	
---test 
SELECT 
 	date_value_str,
	 CAST(date_value_str as date)
FROM date_demo