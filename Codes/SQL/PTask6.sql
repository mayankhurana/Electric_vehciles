SELECT maker,
       SUM(electric_vehicles_sold) AS EV_sold,
       POWER(SUM(CASE WHEN fiscal_year = 2024 THEN electric_vehicles_sold ELSE 0 END) * 1.0 /
             SUM(CASE WHEN fiscal_year = 2022 THEN electric_vehicles_sold ELSE 0 END), 
             1.0 / 2) - 1 AS CAGR
FROM makers
JOIN dim_date ON dim_date.date = makers.date
WHERE vehicle_category = '4-Wheelers'
GROUP BY maker
ORDER BY EV_Sold DESC
LIMIT 5;

