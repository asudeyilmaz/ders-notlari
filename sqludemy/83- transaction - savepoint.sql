-- start a transaction
BEGIN;

INSERT INTO movie_reviews(movie_id, review)
VALUES (10, 'Wonderful');

--New savepoint
SAVEPOINT dbhunter;

INSERT INTO movie_reviews(movie_id, review)
VALUES(8, 'Bad');

UPDATE movie_reviews
SET movie_id = 5 WHERE review_id = 6;

--Up to savepoint dbhunter changes are rollback
ROLLBACK TO SAVEPOINT dbHunter;

