---artan
CREATE SEQUENCE sequence_temp
INCREMENT 10
START 100;

SELECT nextval('sequence_temp');


--azalan
CREATE SEQUENCE sequence_descending
INCREMENT -1
MINVALUE 1
MAXVALUE 100
START 10
CYCLE;

SELECT nextval('sequence_descending');
