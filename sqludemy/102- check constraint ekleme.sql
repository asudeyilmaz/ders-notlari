ALTER TABLE movie_reviews
ADD CHECK (review_rate between 1 and 5)

insert into movie_reviews (movie_id , review_rate) values(100 , 3)

--hata vericek
insert into movie_reviews (movie_id , review_rate) values(100 , 8)