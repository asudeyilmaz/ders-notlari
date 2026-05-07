--benzersiz özelliğini course_name kolonune ekliyoruz
--aynı isimde bir value artık olamaz olursa hata verir
-- eğer daha önceden aynı değerler varsa bu özelliği eklerken hata oluşur
-- aynı değerli satırları tek kalana kadar silince constrainti ekleyebiliriz
ALTER TABLE courses
ADD CONSTRAINT uq_courses UNIQUE (course_name);

select * from courses

insert into courses (course_name) values ('Database Programming-2')

