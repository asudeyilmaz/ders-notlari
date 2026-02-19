---- nullif(expr1, expr2) :
	---- 2 parametre alır.
	---- expr1 ile expr 2 birbirine eşitse sonuç null eşit değilse expr1 i döner
	--- veri tipi birbiri ile  uyumlu olmalı

SELECT
	NULLIF(1,1) N1,
	NULLIF(null,2) N2,
	NULLIF('A',null) N3;
--- test
SELECT b.*,
	NULLIF(current_year, previous_year) as budget
FROM budgets b
--- WHERE NULLIF(current_year, previous_year) IS NULL

SELECT b.*,
	coalesce(current_year, previous_year) as budget
FROM budgets b

 SELECT b.*,
	coalesce(nullif(current_year, null) ,previous_year) as budget
FROM budgets b