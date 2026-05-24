--Views - WITH CHECK OPTION
--------------------------------------------

CREATE VIEW vw_usa_city AS
SELECT country_id, city_id, city
FROM city
WHERE country_id = 103
ORDER BY city;

INSERT INTO vw_usa_city (country_id, city, city_id)
VALUES (102,'Birmingham', 601);

UPDATE vw_usa_city
SET country_id = 104 WHERE city_id = 11

--------------------------------------------

CREATE VIEW vw_usa_city AS
SELECT country_id, city_id, city
FROM city
WHERE country_id = 103
ORDER BY city
WITH CHECK OPTION;

INSERT INTO vw_usa_city (country_id, city_id, city)
VALUES (102, 602, 'Birmingham');

UPDATE vw_usa_city
SET country_id = 104 WHERE city_id = 33
