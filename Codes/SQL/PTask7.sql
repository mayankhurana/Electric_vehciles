SELECT state,
       SUM(total_vehicles_sold) AS Total_Sold, SUM(electric_vehicles_sold) AS EV_Sold,
       POWER(SUM(CASE WHEN fiscal_year = 2024 THEN total_vehicles_sold ELSE 0 END) * 1.0 /
             SUM(CASE WHEN fiscal_year = 2022 THEN total_vehicles_sold ELSE 0 END), 
             1.0 / 2) - 1 AS CAGR
FROM state
JOIN dim_date ON dim_date.date = state.date
GROUP BY state
ORDER BY CAGR DESC
LIMIT 10;

