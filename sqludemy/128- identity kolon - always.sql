--Identity Column - ALWAYS
--------------------------------------------

CREATE TABLE car_info (
    car_id  INT GENERATED ALWAYS AS IDENTITY,
    brand   VARCHAR NOT NULL,
    type    VARCHAR NOT NULL
);

INSERT INTO car_info(brand, type)
VALUES
    ('Mercedes', 'Sedan'),
    ('BMW', 'Coupe');

INSERT INTO car_info(car_id, brand, type)
--OVERRIDING SYSTEM VALUE 
-- elimizle car_id vermeye çalısınca hata vericek fakat overriding yetkimiz
-- varsa onu kullanarak kendimiz yönetebiliriz.
-- fakat overriding yöntemi ile eklediğinizde tekrar normal veri eklenince postgresql kendi yönettiği
-- identity sayıyı verir
VALUES(3, 'Volvo', 'SUV');