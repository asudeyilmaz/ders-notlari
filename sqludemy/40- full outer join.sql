SELECT 
   m.movie_id, mr.movie_id,
   review, title
FROM movies m
FULL OUTER JOIN movie_reviews mr 
   ON mr.movie_id = m.movie_id;
   
------

SELECT
    id_a, fruit_a,
    id_b, fruit_b
FROM basket_a
FULL JOIN basket_b 
    ON fruit_a = fruit_b;
