-- Q2: Monthly revenue trend

SELECT
    DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') AS order_month,
    ROUND(SUM(p.payment_value), 2) AS monthly_revenue
FROM orders o
INNER JOIN order_payments p
    ON o.order_id = p.order_id
GROUP BY DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m')
ORDER BY order_month;