--UUID Column-2
--------------------------------------------

CREATE TABLE orders 
(
    order_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    product_list_id UUID,
    amount NUMERIC,
    FOREIGN KEY (product_list_id) references  
        product_list(product_list_id)
);

INSERT INTO orders(product_list_id, amount)
VALUES
    ('aaecf58f-2987-4b13-a5ee-7606acbba4e1', 56),
    ('d3c4e280-39cb-4ef3-9243-0db2112e6f82', 12)
RETURNING *;
