--- luxury kategoriye ait ürünleri sil

delete from product p
using product_segment ps
where p.segment_id = ps.id
	and segment = 'Luxury'