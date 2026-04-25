CREATE TABLE educations
(
	education_id SERIAL PRIMARY KEY,
	education_name VARCHAR(100) NOT NULL UNIQUE,
	description VARCHAR(500),
	start_date DATE,
	end_date DATE
)
SELECT * FROM educations

insert into educations(education_name, description, start_date, end_date)
values ('PostgreSQL Zero to Advanced 1', 'PostgreSQL', current_date +30 , current_date +35)