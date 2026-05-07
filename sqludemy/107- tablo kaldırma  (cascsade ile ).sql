-- var olan tabloları  varsa silelim
DROP TABLE pages;
DROP TABLE authors;

--yeni tablo oluşturalım

CREATE TABLE authors (
	author_id SMALLSERIAL PRIMARY KEY,
	firstname VARCHAR(50),
	lastname VARCHAR(50)
);


CREATE TABLE pages (
	page_id SMALLSERIAL PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	author_id INT NOT NULL,
	FOREIGN KEY (author_id)
		REFERENCES authors (author_id)
);


--- insert işlemleri

INSERT INTO authors (firstname, lastname) VALUES
	('Stephen', 'King'),
	('Agatha', 'Christie'),
	('Leo' , 'Tolstoy');


INSERT INTO pages (title, author_id) VALUES
	('The Shining', 1) , ('Nightshift' , 1), ('The Dead Zone', 1),
	('The Secret Adversary', 2) , ('The Secret of Chimneys', 2), ('The Mystery of The Blue Train', 2),
	('Anna Karenina',3), ('War and Peace',3), ('What Is Art',3);


--- kayıtlar gelmiş mi bakalım

select * from authors
select * from pages


--- cascade kullanmadan drop etmeyi deneyelim tabloya bağlı obje oldugu için  drop ettirmeyecek
DROP TABLE IF EXISTS authors;

-- cascade ile drop edilebilir.

DROP TABLE authors CASCADE;

--işlem başarılı.