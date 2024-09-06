-- Peak and Low season months for EV Sales in Year 2022
select STRFTIME('%m', state.date) as Month ,SUM(electric_vehicles_sold) AS EV_SOLD
FROM state
JOIN dim_date ON dim_date.date = state.date
WHERE fiscal_year = '2022'
GROUP BY Month
ORDER BY Month;

-- Peak and Low season months for EV Sales in Year 2023
select STRFTIME('%m', state.date) as Month ,SUM(electric_vehicles_sold) AS EV_SOLD
FROM state
JOIN dim_date ON dim_date.date = state.date
WHERE fiscal_year = '2023'
GROUP BY Month
ORDER BY Month;

-- Peak and Low season months for EV Sales in Year 2024
select STRFTIME('%m', state.date) as Month ,SUM(electric_vehicles_sold) AS EV_SOLD
FROM state
JOIN dim_date ON dim_date.date = state.date
WHERE fiscal_year = '2024'
GROUP BY Month
ORDER BY Month;