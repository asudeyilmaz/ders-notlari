EXPLAIN
SELECT * FROM staff_test
WHERE first_name = 'Luis' AND last_name = 'Popp'

CREATE INDEX idx_staff_test_names
ON staff_test (first_name, last_name);

EXPLAIN
SELECT * FROM staff_test
WHERE first_name = 'Luis';

EXPLAIN
SELECT * FROM staff_test
WHERE first_name = 'Luis' AND last_name = 'Popp'