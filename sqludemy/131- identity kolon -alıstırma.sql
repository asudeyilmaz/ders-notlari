
--kullanıcı tarafından değiştirilmeyen 10 dan başlayıp 2 şer artan bir tablo oluştur

create table product_info
(
	product_id generated always as identity
		(start with 10 increment by 2),
	product_name varchar(100),
	price numeric(10,2)
)