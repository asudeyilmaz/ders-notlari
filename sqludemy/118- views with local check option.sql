--Views - WITH LOCAL CHECK OPTION
--------------------------------------------

CREATE OR REPLACE VIEW vw_city_b_usa AS 
SELECT city_id, city, country_id
FROM vw_city_b
WHERE country_id = 103
WITH LOCAL CHECK OPTION;

INSERT INTO vw_city_b_usa (city_id, city, country_id)
VALUES (620, 'Houston', 103);