CREATE TABLE students 
(
    id SERIAL NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    school_name VARCHAR(100) NOT NULL,
    email VARCHAR(500) GENERATED ALWAYS AS 
        (lower(first_name || '.' || last_name || '@' || school_name || '.edu.tr')) STORED
);

INSERT INTO students (first_name, last_name, school_name) 
VALUES 
   ('Taylor', 'Swift', 'Oxford'),
   ('Brad', 'Pitt', 'Cambridge'),
   ('Jim', 'Carrey', 'Stanford'),
   ('Tom', 'Cruise', 'Harvard'),
   ('Keanu', 'Reeves', 'Cambridge')
returning *;
