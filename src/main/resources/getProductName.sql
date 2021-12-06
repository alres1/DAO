SELECT o.product_name FROM ORDERS AS o
    JOIN CUSTOMERS AS c ON c.id = o.customer_id
WHERE c.name = :name