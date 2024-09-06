-- Top 5 States in 2-Wheeler EV Sales Penetration Rate for FY 2024

SELECT state,
       (SUM(electric_vehicles_sold) * 100.0 / SUM(total_vehicles_sold)) AS penetration_rate
FROM state
JOIN dim_date ON state.date = dim_date.date
WHERE vehicle_category = '2-Wheelers' AND fiscal_year = 2024
GROUP BY state
ORDER BY penetration_rate DESC
LIMIT 5;


-- Top 5 States in 4-Wheeler EV Sales Penetration Rate for FY 2024

SELECT state,
       (SUM(electric_vehicles_sold) * 100.0 / SUM(total_vehicles_sold)) AS penetration_rate
FROM state
JOIN dim_date ON state.date = dim_date.date
WHERE vehicle_category = '4-Wheelers' AND fiscal_year = 2024
GROUP BY state
ORDER BY penetration_rate DESC
LIMIT 5;
