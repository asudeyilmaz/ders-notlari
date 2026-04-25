CREATE TABLE accounts
(
	user_id SERIAL PRIMARY KEY,
	user_name VARCHAR(70) NOT NULL,
	user_password VARCHAR(50) NOT NULL,
	email VARCHAR(255) UNIQUE NOT NULL,
	created_on TIMESTAMP NOT NULL DEFAULT CURRENT_DATE,
	last_login TIMESTAMP
);

insert into accounts( username, user_password, email)
values ('eira' , 'eirapas', 'eira@abc.com')

select * from accounts