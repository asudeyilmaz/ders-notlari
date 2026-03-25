BEGIN;

UPDATE product_segment
SET discount = discount + 0.05;

SELECT * FROM product_segment;

UPDATE product p
SET net_price = price - price * s.discount
FROM product_segment s
WHERE p.segment_id = s.id;

SELECT SUM(net_price) FROM product;

ROLLBACK TRANSACTION;
