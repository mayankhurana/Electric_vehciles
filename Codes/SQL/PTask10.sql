Select 
    ((SUM(CASE WHEN fiscal_year = 2024 THEN electric_vehicles_sold *85000 ELSE 0 END) -
    SUM(CASE WHEN fiscal_year = 2022 THEN electric_vehicles_sold*85000 ELSE 0 END)) *100.0 / 
    SUM(CASE WHEN fiscal_year = 2022 THEN electric_vehicles_sold*85000 ELSE 0 END)) AS Revenue_GR_2022_2024,

    ((SUM(CASE WHEN fiscal_year = 2024 THEN electric_vehicles_sold*85000 ELSE 0 END) -
    SUM(CASE WHEN fiscal_year = 2023 THEN electric_vehicles_sold*85000 ELSE 0 END)) *100.0 / 
    SUM(CASE WHEN fiscal_year = 2023 THEN electric_vehicles_sold*85000 ELSE 0 END)) AS Revenue_GR_2023_2024
FROM state
JOIN dim_date ON dim_date.date = state.date
WHERE vehicle_category = '2-Wheelers';


Select 
    ((SUM(CASE WHEN fiscal_year = 2024 THEN electric_vehicles_sold*1500000 ELSE 0 END) -
    SUM(CASE WHEN fiscal_year = 2022 THEN electric_vehicles_sold*1500000 ELSE 0 END)) *100.0 / 
    SUM(CASE WHEN fiscal_year = 2022 THEN electric_vehicles_sold*1500000 ELSE 0 END)) AS Revenue_GR_2022_2024,

    ((SUM(CASE WHEN fiscal_year = 2024 THEN electric_vehicles_sold*1500000 ELSE 0 END) -
    SUM(CASE WHEN fiscal_year = 2023 THEN electric_vehicles_sold*1500000 ELSE 0 END)) *100.0 / 
    SUM(CASE WHEN fiscal_year = 2023 THEN electric_vehicles_sold*1500000 ELSE 0 END)) AS Revenue_GR_2023_2024
FROM state
JOIN dim_date ON dim_date.date = state.date
WHERE vehicle_category = '4-Wheelers';


