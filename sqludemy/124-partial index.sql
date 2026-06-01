--Partial Index
--------------------------------------------
/*
bir tablodaki satırların tamamı yerine, sadece belirli bir şartı (koşulu) sağlayan satırlar için oluşturulan indeks türüdür. 
İndeks tanımına bir WHERE cümleciği eklenerek oluşturulur.

Normal bir indeks tablodaki tüm satırları indekslerken, kısmi indeks sadece sizin seçtiğiniz "küçük bir mahalleyi" indeksler.
Bu sayede hem diskte çok daha az yer kaplar hem de yazma (INSERT/UPDATE) işlemlerini gereksiz yere yavaşlatmaz.
*/

EXPLAIN
SELECT
    customer_id,
    first_name, last_name
FROM customer
WHERE active = 0;

CREATE INDEX idx_customer_inactive
ON customer(active)
WHERE active = 0;