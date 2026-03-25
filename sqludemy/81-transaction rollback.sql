-- start a transaction
BEGIN;


INSERT INTO movie_reviews(movie_id, review)
VALUES
    (10, 'Wonderful'),
    (8, 'Cool');

UPDATE movie_reviews
SET movie_id = 5
WHERE review_id = 6;


-- rollback the changes
ROLLBACK TRANSACTION;

