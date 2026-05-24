CREATE  TABLE car_brands
(
	brand_name VARCHAR(50)
);

INSERT INTO car_brands (brand_name)
VALUES
	('Peugeot'),
	('Mercedes'),
	('Ford'),
	('FIAT');

ALTER TABLE car_brands
ADD COLUMN car_brands_id SERIAL PRIMARY KEY;
------ verisi olan tabloya sonradan id kolonu ekleyip primary key constrainti 
---- verince var olan verilere de sırayla id verir
