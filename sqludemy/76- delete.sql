DELETE FROM basket_c
WHERE id_c = 5;

DELETE FROM staff
WHERE staff_id = 104

DELETE FROM product
WHERE name = 'Oven';

DELETE FROM student
WHERE id =36
RETURNING name, course_name;

DELETE FROM student
WHERE name = 'Arnold';

DELETE FROM courses
WHERE course_id = 3;


------------ birden fazla satır kayıt silme

DELETE FROM basket_c
WHERE id_c IN (8,9)

DELETE FROM basket_c
WHERE fruit_c = 'Orange'

DELETE FROM basket_c
WHERE fruit_c IN
	(SELECT fruit_b FROM basket_b)

DELETE FROM student
WHERE course_name = 'Finance'

DELETE FROM colors
RETURNING *

DELETE FROM cars
WHERE price > 150000
RETURNING brand, price
