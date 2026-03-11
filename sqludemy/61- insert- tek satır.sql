-- insert into ile veri ekleniyorsa tablonun zorunlu alanlarını eklemek gerekir
INSERT INTO departments(department_id, department_name, location_id)
VALUES(12, 'Networking', 2400);

select * from departments

--------implicit yöntem: kolon adları yazılarak eklenen yöntem

INSERT INTO basket_a(id_a, fruit_a)
VALUES(8,'Plum');

------- explicit yöntem: kolon adları yazılmadan eklenen yöntem;
---- basket_a tablosundaki tüm kolonların verilerini sırayla giriceksin demektir. bu şekilde yazılır

INSERT INTO basket_a
VALUES(9,'Watermelon')