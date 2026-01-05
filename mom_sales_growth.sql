
## 🧾 SQL Query
```sql
WITH monthly_sales AS (
    SELECT 
        DATE_FORMAT(last_updated_on, '%Y-%m') AS month,
        SUM(subscription_amount) AS total_sales
    FROM gps_subscription_txns
    GROUP BY DATE_FORMAT(last_updated_on, '%Y-%m')
)
SELECT 
    month,
    total_sales,
    LAG(total_sales) OVER (ORDER BY month) AS prev_month_sales,
    ROUND(
        (total_sales - LAG(total_sales) OVER (ORDER BY month)) 
        / LAG(total_sales) OVER (ORDER BY month) * 100, 
        2
    ) AS mom_growth
FROM monthly_sales;
