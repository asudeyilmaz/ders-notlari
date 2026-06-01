CREATE UNIQUE INDEX idx_cust_name 
ON customer(first_name, last_name, email);

CREATE UNIQUE INDEX idx_uq_payment 
ON payment(customer_id, rental_id);


--Index on Expression
--------------------------------------------
/*
bir tablodaki doğrudan bir sütun yerine, bir sütun üzerinde yapılan bir fonksiyon, matematiksel işlem veya ifadenin sonucuna 
göre oluşturulan indeks türüdür.
Normalde bir indeks (CREATE INDEX idx_name ON tablo (sutun)), o sütundaki yalın verilere göre sıralama yapar. Ancak siz sorgularınızda
sürekli o sütunu bir işleme sokarak filtreliyorsanız (örneğin hepsini büyük harfe çevirmek gibi), standart indeks işe yaramaz. İşte burada devreye
Index on Expression girer
*/

EXPLAIN
SELECT 
    customer_id, store_id
    first_name, last_name 
FROM customer 
WHERE last_name = 'Ely';

EXPLAIN
SELECT 
    customer_id, store_id
    first_name, last_name 
FROM customer 
WHERE lower(last_name) = 'ely';

CREATE INDEX idx_ic_last_name
ON customer(LOWER(last_name));