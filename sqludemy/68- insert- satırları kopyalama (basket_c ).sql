select * from basket_c

insert into basket_c(fruit_c)
select fruit_a from basket_a
union
select fruit_b from basket_b