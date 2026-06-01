--UNIQUE Indexes
--------------------------------------------

CREATE UNIQUE INDEX idx_employees_email ON employees(email);

INSERT INTO employees(first_name, last_name, email, hire_date, job_id, salary)
VALUES ('Daniel', 'Faviet Urman', 'daniel.faviet@sqltutorial.org', current_date, 4, 5000)



--------------------------------------------

CREATE UNIQUE INDEX idx_cust_name 
ON customer(first_name, last_name, email);

CREATE UNIQUE INDEX idx_payment 
ON payment(customer_id, rental_id);

