CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    list_price DECIMAL(10, 2) NOT NULL,
    tax DECIMAL(5, 2) DEFAULT 0,
    discount DECIMAL(5, 2) DEFAULT 0,
    net_price DECIMAL(10, 2) GENERATED ALWAYS AS ((list_price + (list_price * tax / 100)) - (list_price * discount / 100)) STORED
);

INSERT INTO products (name, list_price, tax, discount)
VALUES
    ('Chair', 100.00, 10.00, 5.00),
    ('Sofa', 50.00, 8.00, 0.00),
    ('Stove', 120.00, 12.50, 10.00),
    ('Lamp', 150.00, 18.50, 12.00)
RETURNING *;
