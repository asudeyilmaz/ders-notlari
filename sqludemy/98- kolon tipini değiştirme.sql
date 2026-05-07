select * from courses;

 ALTER TABLE courses 
 ALTER COULMN description TYPE TEXT ;

-------------------------------------------------

SELECT * FROM colors

ALTER TABLE colors 
ALTER COLUMN color TYPE VARCHAR(20);


---------------------------------------------------------------

SELECT * FROM budgets ;

------------- range aralıgında bulunmadıgı için hata verir int yaparsan düzelir

ALTER TABLE budgets
ALTER COLUMN current_year TYPE smallint,
ALTER COLUMN previous_year TYPE smallint;