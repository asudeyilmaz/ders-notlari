select * from movie_reviews

-------------------------------------------------


alter table movie_reviews
alter column review
set default 'Good'
----- yeni eklenecek kolonlara default olarak good değerini atar eski kolonları değiştirmez

alter table movie_reviews
alter column user_review_date
set default current_date

insert into movie_reviews (movie_id) values(5)

---- default değeri kaldırmak

alter table movie_reviews
alter column last_update
drop default

insert into movie_reviews (movie_id) values(100)
