SELECT brand, color
FROM cars
CROSS JOIN colors;

SELECT brand, color
FROM cars
INNER JOIN colors ON true;

SELECT brand, color
FROM cars, colors;