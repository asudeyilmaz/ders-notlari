CREATE TABLE basket_c
(
	id_c SERIAL PRIMARY KEY,
	fruit_c VARCHAR(50) NOT NULL,
	calorie INTEGER DEFAULT 0
);

INSERT INTO basket_c(fruit_c)
VALUES('Orange')
RETURNING id_c;

INSERT INTO basket_c(fruit_c)
VALUES('Watermelon')
RETURNING id_c AS last_id;

INSERT INTO basket_c(fruit_c, calorie)
VALUES('Apple',100)
RETURNING * ;

SELECT * FROM basket_c;