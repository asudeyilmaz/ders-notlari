-- ekonomi bölümünün ismini Finance olarak değiştir
SELECT * FROM student
WHERE course_name = 'Finance'

UPDATE student
SET course_name = 'Finance'
WHERE course_name = 'Economics'