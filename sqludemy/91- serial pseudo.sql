create table colors2
(
	color_id smallserial,
	color_name varchar(20)
)

insert into colors2(color_id, color_name)
--values (default, 'Green')
values(default,'Yellow')

select * from colors2

-- arka plandaki ilglili tablonun ilgili değerin en son kaldıgı değer
select currval(pg_get_serial_sequence('colors2', 'color_id')) 

-- o son kolonun değerini 1 arttırır
select nextval(pg_get_serial_sequence('colors2', 'color_id')) 

