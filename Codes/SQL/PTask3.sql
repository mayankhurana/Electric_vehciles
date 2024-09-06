-- States with decline in 2-Wheeler's Penetration Rate from 2022-2023
SELECT state,
        (SUM(CASE WHEN fiscal_year = 2023 AND vehicle_category = '2-Wheelers' THEN electric_vehicles_sold ELSE 0 END) * 100.0 / 
        SUM(CASE WHEN fiscal_year = 2023 AND vehicle_category = '2-Wheelers' THEN total_vehicles_sold ELSE 0 END)) -
       (SUM(CASE WHEN fiscal_year = 2022 AND vehicle_category = '2-Wheelers' THEN electric_vehicles_sold ELSE 0 END) * 100.0 / 
        SUM(CASE WHEN fiscal_year = 2022 AND vehicle_category = '2-Wheelers' THEN total_vehicles_sold ELSE 0 END)) AS penetration2022_2023,
       (SUM(CASE WHEN fiscal_year = 2024 AND vehicle_category = '2-Wheelers' THEN electric_vehicles_sold ELSE 0 END) * 100.0 / 
        SUM(CASE WHEN fiscal_year = 2024 AND vehicle_category = '2-Wheelers' THEN total_vehicles_sold ELSE 0 END)) -
       (SUM(CASE WHEN fiscal_year = 2022 AND vehicle_category = '2-Wheelers' THEN electric_vehicles_sold ELSE 0 END) * 100.0 / 
        SUM(CASE WHEN fiscal_year = 2022 AND vehicle_category = '2-Wheelers' THEN total_vehicles_sold ELSE 0 END)) AS penetration2022_2024
FROM state
JOIN dim_date ON state.date = dim_date.date
GROUP BY state
HAVING 
penetration2022_2023 < 0 OR
penetration2022_2024 < 0;

-- States with decline in 4-Wheeler's Penetration Rate from 2022-2024

SELECT state,
        (SUM(CASE WHEN fiscal_year = 2023 AND vehicle_category = '4-Wheelers' THEN electric_vehicles_sold ELSE 0 END) * 100.0 / 
        SUM(CASE WHEN fiscal_year = 2023 AND vehicle_category = '4-Wheelers' THEN total_vehicles_sold ELSE 0 END)) -
       (SUM(CASE WHEN fiscal_year = 2022 AND vehicle_category = '4-Wheelers' THEN electric_vehicles_sold ELSE 0 END) * 100.0 / 
        SUM(CASE WHEN fiscal_year = 2022 AND vehicle_category = '4-Wheelers' THEN total_vehicles_sold ELSE 0 END)) AS penetration2022_2023,
       (SUM(CASE WHEN fiscal_year = 2024 AND vehicle_category = '4-Wheelers' THEN electric_vehicles_sold ELSE 0 END) * 100.0 / 
        SUM(CASE WHEN fiscal_year = 2024 AND vehicle_category = '4-Wheelers' THEN total_vehicles_sold ELSE 0 END)) -
       (SUM(CASE WHEN fiscal_year = 2022 AND vehicle_category = '4-Wheelers' THEN electric_vehicles_sold ELSE 0 END) * 100.0 / 
        SUM(CASE WHEN fiscal_year = 2022 AND vehicle_category = '4-Wheelers' THEN total_vehicles_sold ELSE 0 END)) AS penetration2022_2024
FROM state
JOIN dim_date ON state.date = dim_date.date
GROUP BY state
HAVING 
penetration2022_2023 < 0 OR
penetration2022_2024 < 0;
