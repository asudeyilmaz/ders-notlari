select * from product

select * from product_segment

select name, price, segment, discount, price - price*discount as net_pri
from product p , product_segment ps
where p.segment_id = ps.id

update product p
set net_price = price - price*discount
from product_segment ps
where p.segment_id = ps.id