WITH QuarterlySales AS (
    SELECT
        d.fiscal_year,
        d.quarter,
        m.maker,
        SUM(m.electric_vehicles_sold) AS total_sales
    FROM
        makers m  
    JOIN
        dim_date d ON m.date = d.date 
    WHERE
        m.vehicle_category = '4-Wheelers'
        AND d.fiscal_year BETWEEN 2022 AND 2024
    GROUP BY
        d.fiscal_year, d.quarter, m.maker
),
RankedSales AS (
    SELECT 
        *,
        RANK() OVER (PARTITION BY fiscal_year, quarter ORDER BY total_sales DESC) AS rank_in_quarter
    FROM QuarterlySales
)
SELECT 
    fiscal_year,
    quarter,
    maker,
    total_sales
FROM RankedSales
WHERE rank_in_quarter <= 5
ORDER BY 
    fiscal_year, 
    quarter,
    total_sales DESC;