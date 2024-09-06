-- Top 3 makers for fiscal year 2023 with actual rank
SELECT rank, maker, total_sales
FROM (
    SELECT maker, SUM(electric_vehicles_sold) AS total_sales,
           RANK() OVER (ORDER BY SUM(electric_vehicles_sold) DESC) AS rank
    FROM makers
    JOIN dim_date ON makers.date = dim_date.date
    WHERE vehicle_category = '2-Wheelers' AND fiscal_year = 2023
    GROUP BY maker
) AS ranked_makers
WHERE rank <= 3;

-- Bottom 3 makers for fiscal year 2023 with actual rank, ordered properly
SELECT rank, maker, total_sales
FROM (
    SELECT rank, maker, total_sales
    FROM (
        SELECT maker, SUM(electric_vehicles_sold) AS total_sales,
               RANK() OVER (ORDER BY SUM(electric_vehicles_sold) DESC) AS rank
        FROM makers
        JOIN dim_date ON makers.date = dim_date.date
        WHERE vehicle_category = '2-Wheelers' AND fiscal_year = 2023
        GROUP BY maker
    ) AS ranked_makers_inner
    ORDER BY rank DESC
    LIMIT 3
) AS ranked_makers_outer
ORDER BY rank;

-- Top 3 makers for fiscal year 2024 with actual rank
SELECT rank, maker, total_sales
FROM (
    SELECT maker, SUM(electric_vehicles_sold) AS total_sales,
           RANK() OVER (ORDER BY SUM(electric_vehicles_sold) DESC) AS rank
    FROM makers
    JOIN dim_date ON makers.date = dim_date.date
    WHERE vehicle_category = '2-Wheelers' AND fiscal_year = 2024
    GROUP BY maker
) AS ranked_makers
WHERE rank <= 3;

-- Bottom 3 makers for fiscal year 2024 with actual rank, ordered properly
SELECT rank, maker, total_sales
FROM (
    SELECT rank, maker, total_sales
    FROM (
        SELECT maker, SUM(electric_vehicles_sold) AS total_sales,
               RANK() OVER (ORDER BY SUM(electric_vehicles_sold) DESC) AS rank
        FROM makers
        JOIN dim_date ON makers.date = dim_date.date
        WHERE vehicle_category = '2-Wheelers' AND fiscal_year = 2024
        GROUP BY maker
    ) AS ranked_makers_inner
    ORDER BY rank DESC
    LIMIT 3
) AS ranked_makers_outer
ORDER BY rank;
