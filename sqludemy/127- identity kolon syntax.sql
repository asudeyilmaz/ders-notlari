-- IDENTITY KOLON SYNTAX
/*
column_name type GENERATED { ALWAYS | BY DEFAULT } AS IDENTITY [ ( sequence_option)]

type can be smallınt , int or bigint
2- always : tüm yönetim postgresqlde deir veriyi biz yönetmeyiz veritabanı yönetir.
3- by default :postgresql tek tek unique numaralar üretir fakat değeri elimizle verebiliriz 
ikisinin arasındaki tek fark bu  yönetmek isteyince birisi hata verir ama hatayı aşma yöntemi vardır. diğeri hata vermez

*/