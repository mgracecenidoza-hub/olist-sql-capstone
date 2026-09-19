-- Q7: Repeat buyers vs one-time buyers

WITH customer_orders AS (
    SELECT
        c.customer_unique_id,
        COUNT(DISTINCT o.order_id) AS order_count
    FROM customers c
    INNER JOIN orders o
        ON c.customer_id = o.customer_id
    GROUP BY c.customer_unique_id
)

SELECT
    CASE
        WHEN order_count = 1 THEN 'One-time Buyer'
        ELSE 'Repeat Buyer'
    END AS buyer_type,
    COUNT(*) AS number_of_customers
FROM customer_orders
GROUP BY buyer_type;