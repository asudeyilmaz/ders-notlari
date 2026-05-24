--Views - WITH CASCADED CHECK OPTION
--------------------------------------------

CREATE VIEW vw_city_b AS
SELECT city_id, city, country_id
FROM city
WHERE city LIKE 'B%';

CREATE OR REPLACE VIEW vw_city_b_usa AS 
SELECT city_id, city, country_id
FROM vw_city_b
WHERE country_id = 103 
WITH CASCADED CHECK OPTION;

INSERT INTO vw_city_b_usa (city_id, city, country_id)
VALUES (620, 'Dallas', 103);
