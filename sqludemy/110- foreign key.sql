--- her kullanıcının birden fazla rolu olabileceği için roller için ayrı
--- tablo oluşturarak foreign keyle birbiri ile ilişkilendirdik
CREATE TABLE account_roles
(
	user_id int not null,
	role_id int not null,
	grant_date timestamp,
	primary key (user_id,role_id),
	foreign key (role_id)
		references roles (role_id),
	foreign key (user_id)
		references accounts (user_id)	
);
--- her rolden bir tane oldugu için ayrı tablo
CREATE TABLE roles
(
	role_id serial PRIMARY KEY,
	role_name VARCHAR(255) UNIQUE NOT NULL
);


CREATE TABLE accounts
(
	user_id serial PRIMARY KEY,
	username VARCHAR(70) UNIQUE NOT NULL,
	user_password VARCHAR(50) NOT NULL,
	email VARCHAR(255) UNIQUE NOT NULL,
	created_on TIMESTAMP NOT NULL DEFAULT CURRENT_DATE,
	last_login TIMESTAMP	
);

