-- Q5: Top 3 products within each category by revenue

WITH product_revenue AS (
    SELECT
        pr.product_category_name,
        oi.product_id,
        ROUND(SUM(oi.price), 2) AS total_revenue
    FROM order_items oi
    INNER JOIN products pr
        ON oi.product_id = pr.product_id
    GROUP BY
        pr.product_category_name,
        oi.product_id
),

ranked_products AS (
    SELECT
        product_category_name,
        product_id,
        total_revenue,
        ROW_NUMBER() OVER (
            PARTITION BY product_category_name
            ORDER BY total_revenue DESC
        ) AS product_rank
    FROM product_revenue
)

SELECT
    product_category_name,
    product_id,
    total_revenue,
    product_rank
FROM ranked_products
WHERE product_rank <= 3
ORDER BY product_category_name, product_rank;