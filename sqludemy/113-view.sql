CREATE VIEW vw_cust_info AS
SELECT cu.customer_id,
    cu.first_name || ' ' || cu.last_name AS full_name,
    co.country, ci.city,ad.address, 
    ad.postal_code, ad.phone, cu.store_id,
    CASE
        WHEN cu.activebool THEN 'OK'
    ELSE 'NOK'
    END AS active,
    (SELECT COUNT(*) FROM rental re 
     WHERE re.customer_id = cu.customer_id) rental_number
FROM customer cu
    INNER JOIN address ad USING (address_id)
    INNER JOIN city ci USING (city_id)
    INNER JOIN country co USING (country_id);