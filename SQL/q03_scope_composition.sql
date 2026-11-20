-- Q3: How is each company's carbon footprint distributed across Scopes 1, 2 and 3?
-- Scope 2 uses the market-based figure because Amazon does not disclose location-based.
-- Percentages are relative to each company's own total (PARTITION BY company).
WITH emission_only AS (
    SELECT company, metric, value_numeric, unit, comparable
    FROM esg_data
    WHERE metric IN ('Scope 1', 'Scope 2 (market-based)', 'Scope 3')
      AND comparable = 'Yes'
),
emission_calc AS (
    SELECT *,
           SUM(value_numeric) OVER (PARTITION BY company) AS tot_emission
    FROM emission_only
)
SELECT company, metric AS scope, value_numeric, unit,
       ROUND((value_numeric / tot_emission) * 100.0, 2) || '%' AS pct_of_company_total
FROM emission_calc
ORDER BY company ASC, scope ASC;
