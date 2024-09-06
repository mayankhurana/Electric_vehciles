WITH state_cagr AS (
    SELECT state,
        SUM(CASE WHEN fiscal_year = 2024 THEN electric_vehicles_sold ELSE 0 END) AS EV_sold_2024,
           POWER(SUM(CASE WHEN fiscal_year = 2024 THEN electric_vehicles_sold ELSE 0 END) * 1.0 /
                SUM(CASE WHEN fiscal_year = 2022 THEN electric_vehicles_sold ELSE 0 END), 
                1.0 / 2) - 1 AS CAGR
    FROM state
    JOIN dim_date ON dim_date.date = state.date
    GROUP BY state
),
top_10_states AS (
        SELECT state,
               SUM(electric_vehicles_sold) * 100.0 / SUM(total_vehicles_sold) AS penetration_rate
        FROM state
        GROUP BY state
        ORDER BY penetration_rate DESC
        LIMIT 10
    
)
SELECT c.state, c.CAGR, t.penetration_rate,
       c.EV_sold_2024 * POWER(1 + c.CAGR, 2030 - 2024) AS projected_ev_sales_2030
FROM state_cagr c
JOIN top_10_states t ON c.state = t.state
ORDER BY projected_ev_sales_2030 DESC;