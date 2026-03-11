--100 id li filmi güncelleme tarihini ve kiralama fiyatını değiştir

select * from film WHERE film_id = 100

UPDATE film
SET replacement_cost = 20,
	last_update = current_date
WHERE film_id = 100
RETURNING film_id, title, replacement_cost, last_update