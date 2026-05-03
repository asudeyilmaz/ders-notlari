ALTER TABLE staff
ADD COLUMN email varchar(100);

ALTER TABLE staff
ADD COLUMN salary numeric(8,2) DEFAULT 0;

SELECT * FROM staff


-------------------------------------------------------

ALTER TABLE movie_reviews
ADD COLUMN review_date date,
ADD COLUMN last_update date default current_date,
add column review_rate int default 1;

select * from movie_reviews