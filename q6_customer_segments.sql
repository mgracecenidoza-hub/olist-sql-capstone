-- Q6: Segment customers into spend tiers

WITH customer_spending AS (
    SELECT
        c.customer_id,
        ROUND(SUM(p.payment_value), 2) AS total_spent
    FROM customers c
    INNER JOIN orders o
        ON c.customer_id = o.customer_id
    INNER JOIN order_payments p
        ON o.order_id = p.order_id
    GROUP BY c.customer_id
)

SELECT
    customer_id,
    total_spent,
    CASE
        WHEN total_spent < 100 THEN 'Low'
        WHEN total_spent <= 500 THEN 'Medium'
        ELSE 'High'
    END AS spend_tier
FROM customer_spending
ORDER BY total_spent DESC;