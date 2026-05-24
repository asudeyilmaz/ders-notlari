constraint fk_customer
	foreign key (customer_id)
	references customers(customer_id)
	on delete set null
	on delete cascade
---- on delete ile yazılan kurallar ile tablodan veri silinebilir
---- set null = refereans edilen tablodaki kayıtları null yapar
--- cascade bağlı olan tablodaki değerleride siler