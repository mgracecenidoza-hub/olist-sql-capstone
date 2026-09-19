-- Q8: Percentage of total revenue from the top category

WITH category_revenue AS (
    SELECT
        pr.product_category_name,
        SUM(oi.price) AS category_revenue
    FROM order_items oi
    INNER JOIN products pr
        ON oi.product_id = pr.product_id
    GROUP BY pr.product_category_name
),

category_percentage AS (
    SELECT
        product_category_name,
        category_revenue,
        SUM(category_revenue) OVER () AS total_revenue
    FROM category_revenue
)

SELECT
    product_category_name,
    ROUND(category_revenue, 2) AS category_revenue,
    ROUND(total_revenue, 2) AS total_revenue,
    ROUND((category_revenue / total_revenue) * 100, 2)
        AS percent_of_total_revenue
FROM category_percentage
ORDER BY category_revenue DESC
LIMIT 1;