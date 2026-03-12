/*
delete join

syntax:
delete from t1
using t2
where t1.id =t2.id
returning returning_columns
*/

DELETE FROM movies m
USING movie_reviews mr
WHERE mr.movie_id = mr.movie_id

----using olmadan:

DELETE FROM movies m 
WHERE  m.movie_id IN 
	(select mr.movie_id from movie_reviews mr )

-----------------
DELETE FROM movies m 
WHERE EXISTS 
	(
		SELECT 1 FROM movie_reviews mr
		WHERE m.movie_id = mr.movie_id
	);

	