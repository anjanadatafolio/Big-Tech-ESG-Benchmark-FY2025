-- Q4: Which Scope 3 categories contribute most, and are definitions consistent?
-- comparable = 'Yes' keeps only Cat 1, 3, 4, 6, 7 (disclosed consistently by all three).
-- So pct_of_scope3 is a share of the COMPARABLE categories, not of total Scope 3.
-- Capital Goods (Cat 2) is excluded because Google reports it merged with Cat 11.
WITH emission_only AS (
    SELECT company, metric, value_numeric, unit, comparable
    FROM esg_data
    WHERE metric LIKE 'Scope3 Cat%'
      AND comparable = 'Yes'
),
emission_calc AS (
    SELECT *,
           SUM(value_numeric) OVER (PARTITION BY company) AS tot_scope3
    FROM emission_only
)
SELECT company, metric AS scope3_category, value_numeric, unit,
       ROUND((value_numeric / tot_scope3) * 100.0, 2) || '%' AS pct_of_scope3
FROM emission_calc
ORDER BY company ASC, scope3_category ASC;
