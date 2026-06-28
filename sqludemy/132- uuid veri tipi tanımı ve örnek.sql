--UUID Column-1
--------------------------------------------
/*
UUID (Universally Unique Identifier), Türkçesiyle "Evrensel Benzersiz Kimlik Tanımlayıcı", bilgisayar sistemlerinde herhangi bir merkezi otoriteye (bir veritabanı sunucusuna veya kayıt merkezine) ihtiyaç duymadan, dünya üzerinde tamamen benzersiz değerler
üretmek için kullanılan 128-bitlik bir veri tipidir.

PostgreSQL sequence mantığında sırayla artan (1, 2, 3...) sayılar üretirken, UUID tamamen rastgele ve benzersiz karakter dizileri üretir.

Şöyle görünürler:
6b29fc40-ca47-1067-b31d-00dd010f667d

UUID Ne Zaman Kullanılmalı?

Güvenlik Gerektiren Durumlarda: Kullanıcı profilleri, fatura linkleri veya sipariş detayları gibi URL'de taşınan ID'lerin
tahmin edilmesini istemiyorsanız (Rakiplerinizin site.com/orders/1002 linkine bakarak toplam sipariş sayınızı tahmin etmesini engellemek için).

Mikroservis ve Dağıtık Sistemlerde: Birden fazla sunucunuz veya veritabanınız varsa ve hepsi aynı anda veri üretiyorsa, birbirlerine sormadan
çakışmayan ID'ler üretmek için.

Mobil Uygulamalarda (Çevrimdışı Mod): Kullanıcı internete bağlı değilken telefonda veri oluşturup (örneğin offline not alma) internet
geldiğinde veritabanına gönderdiğinde ID çakışması yaşanmaması için.

Eğer projeniz tek bir veritabanında çalışacak, dış dünyaya ID'leri açık etmeyecek basit bir proje ise geleneksel BigInt/Sequence kullanmak
performans ve depolama açısından daha mantıklı olabilir.
*/



CREATE TABLE product_list 
(
    product_list_id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    product_name VARCHAR(100),
    category_id INT
);

INSERT INTO product_list (product_name, category_id)
VALUES 
    ('Cupboard', 1),
    ('Bed', 1),
    ('Sofa', 1),
    ('Glass', 2),
    ('Cup', 2)
RETURNING *;

