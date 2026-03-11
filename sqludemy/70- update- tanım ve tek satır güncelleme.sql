/*
UPDATE 

	table_name
SET column1 = value1,
	column2 = value2
WHERE
	condition
RETURNING
	* column

*/

UPDATE student
SET mark = 85
WHERE id = 3

select * from student

UPDATE cars
SET brand = 'Mercedes Benz'
WHERE id = 1

select* from cars

UPDATE cars
SET brand = 'Ferrari'
WHERE brand = 'Ferrai'