--Updatable Views
--------------------------------------------

create view student_engineer as
select * from student
where course_name ilike '%engineer%'

update student_engineer 
set email = regexp_replace(lower(name), '[\s+]', '', 'g') || '@engineer.com'

--------------------------------------------

create view vw_product_grand_lux as
select id, name, price from product
where segment_id = 1

update vw_product_grand_lux 
set price = price * 1.3

delete from vw_product_grand_lux
where id = 11;

insert into vw_product_grand_lux(id, name, price)
values(21, 'Air Cleaner', 1200)
