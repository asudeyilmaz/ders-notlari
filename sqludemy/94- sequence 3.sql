CREATE SEQUENCE sq_payment_item_id2
START 10
INCREMENT 10
MINVALUE 10

------------------------

CREATE TABLE payment_details2 (
	payment_id SERIAL,
	item_id INT NOT NULL DEFAULT(nextval('sq_payment_item_id2')),
	item_text VARCHAR(50) NOT NULL,
	price DEC(10,2) NOT NULL,
	PRIMARY KEY(payment_id, item_id)
);

--------------------------------
ALTER SEQUENCE sq_payment_item_id2
OWNED BY payment_details2.item_id;


---------------------------------------
INSERT INTO 
	payment_details2(item_text, price)
VALUES
	('Sofa', 120),
	('fridge', 550),
	('Speaker', 50),
	('Table',250)

select * from payment_details2