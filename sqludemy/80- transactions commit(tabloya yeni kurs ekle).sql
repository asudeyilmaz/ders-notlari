--start a transaction
BEGIN;

select * from courses order by 1;

UPDATE courses
SET published_date = published_date + interval '2 month'
WHERE course_id = 1;

INSERT INTO courses(course_name, description, published_date)
VALUES ('Working with PostgreSQL' ,  'Database Programming', '2023-03-10')

--commit the change (or roll it back later)
COMMIT;