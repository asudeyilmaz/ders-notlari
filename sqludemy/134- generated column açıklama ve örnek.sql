CREATE TABLE contacts(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    full_name VARCHAR(100) GENERATED ALWAYS AS (first_name || ' ' || last_name) STORED,
    email VARCHAR(300) UNIQUE
);
/*
Generated kolon (generated column), bir tablodaki diğer kolonların değerlerini kullanarak otomatik olarak hesaplanan ve güncellenen 
özel bir kolon türüdür.
Burada full_name kolonuna sen dışarıdan elle hiçbir şey yazamazsın. Veritabanı, first_name ve last_name alanlarına bakarak bu iki metni
birleştirir ve full_name alanını kendi kendine doldurur

Generated Kolonların Temel Özellikleri
Otomatik Yönetim: INSERT veya UPDATE ile bu kolona elle veri eklemeye çalışırsan hata alırsın. Değeri her zaman veritabanı motoru hesaplar.

Dinamik Güncelleme: first_name alanını "John" yerine "Johnny" olarak güncellersen, full_name alanı hiçbir ek işlem yapmana gerek kalmadan otomatik olarak "Johnny Doe" olur.

Tutarlılık: Uygulama katmanında ad ve soyadı birleştirmeyi unutma riskini ortadan kaldırır. Verinin her zaman doğru formatta kalmasını sağlar

STORED Ne Anlama Gelir?
PostgreSQL'de generated kolonlar tanımlanırken genellikle STORED (depolanan) anahtar kelimesi kullanılır.

STORED: Hesaplanan değer diskte fiziksel olarak saklanır. Satır her eklendiğinde veya güncellendiğinde bir kez hesaplanır ve kaydedilir.

Avantajı: Veriyi her okumak istediğinde (SELECT) yeniden hesaplama yapılmaz, diskten direkt okunur. Bu yüzden hızlıdır ve üzerine indeks (index) atılabilir.

Dezavantajı: Diskte ekstradan yer kaplar.
*/
INSERT INTO contacts(first_name, last_name, email)
VALUES
    ('John', 'Doe', 'john.doe@example.com'),
    ('Sarah', 'Jackson', 'sarah.jackson@example.com'),
    ('Matt', 'Damon', 'matt.damon@xyz.com')
RETURNING *;
