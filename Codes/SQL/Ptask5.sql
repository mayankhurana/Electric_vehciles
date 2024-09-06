-- Delhi Vs Karnataka: Penetration rate and EV rates for all EVs
SELECT state, SUM(electric_vehicles_sold), 
SUM(electric_vehicles_sold)*100/SUM(total_vehicles_sold) AS Penetration_rate
FROM state
JOIN dim_date ON dim_date.date = state.date
WHERE fiscal_year = '2024' AND (state = 'Delhi' OR state = 'Karnataka')
GROUP BY state, fiscal_year;

-- Delhi Vs Karnataka: Penetration rate and EV rates for 2-Wheeler EVs

SELECT state, SUM(electric_vehicles_sold), 
SUM(electric_vehicles_sold)*100/SUM(total_vehicles_sold) AS Penetration_rate
FROM state
JOIN dim_date ON dim_date.date = state.date
WHERE fiscal_year = '2024' AND (state = 'Delhi' OR state = 'Karnataka') AND vehicle_category = '2-Wheelers'
GROUP BY state, fiscal_year;

-- Delhi Vs Karnataka: Penetration rate and EV rates for 4-Wheelers EVs

SELECT state, SUM(electric_vehicles_sold), 
SUM(electric_vehicles_sold)*100/SUM(total_vehicles_sold) AS Penetration_rate
FROM state
JOIN dim_date ON dim_date.date = state.date
WHERE fiscal_year = '2024' AND (state = 'Delhi' OR state = 'Karnataka') AND vehicle_category = '4-Wheelers'
GROUP BY state, fiscal_year;