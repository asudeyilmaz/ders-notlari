-- İÇ İÇE FONKSİYONLARIN VERİ TİPLERİ UYUMLU OLMALIDIR.
SELECT first_name, last_name,
	LENGTH(CONCAT(first_name, last_name)) as length_name,
	CONCAT(SUBSTRING(first_name, 1,2), '.', SUBSTRING(last_name , 1, 2), '.') as name
FROM employees

--- ör test
SELECT salesman_id,
	COALESCE(
			CAST(
					NULLIF(current_year, previous_year)
					as Varchar),
				'Same as last year') as budget
FROM budgets
WHERE current_year is not null;