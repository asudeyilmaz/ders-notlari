INSERT INTO basket_c(fruit_c)
VALUES
	('Lime'),
	('Peach'),
	('Quince'),
	('Nectarine')
RETURNING *;

