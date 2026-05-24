CREATE TABLE authors
(
author_id int primary key, --- int eklendiği için artan sırada verilmez kendimiz veririz
firstname varchar(50),
lastname VARCHAR(50)
)

INSERT INTO authors
VALUES (1,'Stephen','King'), (2,'Agatha','Christie')

---------------


CREATE TABLE products
(
	product_no INTEGER,
	description TEXT,
	product_cost NUMERIC
);
----sonradan primary key eklenebilir
ALTER TABLE products
ADD PRIMARY KEY (product_no);
