-- Q4: Product categories generating the most revenue

SELECT
    pr.product_category_name,
    ROUND(SUM(oi.price), 2) AS total_revenue
FROM order_items oi
INNER JOIN products pr
    ON oi.product_id = pr.product_id
GROUP BY pr.product_category_name
ORDER BY total_revenue DESC;