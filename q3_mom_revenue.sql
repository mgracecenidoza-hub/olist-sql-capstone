-- Q3: Month-over-month revenue change

WITH monthly_revenue AS (
    SELECT
        DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') AS order_month,
        ROUND(SUM(p.payment_value), 2) AS revenue
    FROM orders o
    INNER JOIN order_payments p
        ON o.order_id = p.order_id
    GROUP BY DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m')
)

SELECT
    order_month,
    revenue,
    LAG(revenue) OVER (ORDER BY order_month) AS previous_month_revenue,
    ROUND(
        ((revenue - LAG(revenue) OVER (ORDER BY order_month))
        / LAG(revenue) OVER (ORDER BY order_month)) * 100,
        2
    ) AS mom_change_percent
FROM monthly_revenue
ORDER BY order_month;