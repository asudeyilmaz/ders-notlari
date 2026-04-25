CREATE TABLE payment_details(
	payment_id SERIAL,
	item_id INT NOT NULL,
	item_text VARCHAR(50) NOT NULL,
	price DEC(10,2) NOT NULL,
	PRIMARY KEY(payment_id, item_id)
);

--------------------------------

CREATE SEQUENCE sq_payment_item_id
START 10
INCREMENT 10
MINVALUE 10
OWNED BY payment_details.item_id;

-----------------------------------

INSERT INTO
	payment_details(payment_id, item_id, item_text, price)
VALUES
	(100, nextval('sq_payment_item_id'), 'Sofa', 120),
	(100, nextval('sq_payment_item_id'), 'Fridge', 550),
	(100, nextval('sq_payment_item_id'), 'Speaker', 50),
	(101, nextval('sq_payment_item_id'), 'Table', 250),
	(101, nextval('sq_payment_item_id'), 'Lamp', 25);
------------------------------------------

INSERT INTO
	payment_details(item_id, item_text, price)
VALUES
	(nextval('sq_payment_item_id'), 'Sofa', 120),
	(nextval('sq_payment_item_id'), 'Fridge', 550),
	(nextval('sq_payment_item_id'), 'Speaker', 50),
	(nextval('sq_payment_item_id'), 'Table', 250),
	(nextval('sq_payment_item_id'), 'Lamp', 25);

select * from payment_details
select nextval('sequence_descending')