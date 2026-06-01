--Reindex
--------------------------------
/*
PostgreSQL'de mevcut bir veya birden fazla indeksin sıfırdan yeniden oluşturulması (rebuild) işlemidir.

Veritabanlarında veriler sürekli eklendikçe, güncellendikçe veya silindikçe indeks yapıları zamanla bozulabilir,
şişebilir ve verimsizleşebilir. REINDEX komutu, indeksi tamamen silip mevcut en güncel tablo verilerine göre en optimize şekilde baştan yazar.
*/
REINDEX INDEX idx_cust_name;
REINDEX (VERBOSE) TABLE customer;
REINDEX SCHEMA public;
REINDEX DATABASE Test;