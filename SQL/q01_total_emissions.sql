-- Q1: Which company had the lowest total GHGP-aligned emissions in 2025?
-- Filter to the metric BEFORE ranking so company_rank is 1-3, not ranked against all 98 rows.
-- comparable = 'Yes' applied per project rule (all three rows qualify here).
WITH emissions_only AS (
    SELECT company, fiscal_year, metric, value_numeric, unit, comparable
    FROM esg_data
    WHERE metric = 'Total Emissions (GHGP-aligned)'
      AND fiscal_year = 2025
      AND comparable = 'Yes'
),
emissions_rank AS (
    SELECT *,
           DENSE_RANK() OVER (ORDER BY value_numeric ASC) AS company_rank
    FROM emissions_only
)
SELECT company_rank, company, fiscal_year, metric, value_numeric, unit
FROM emissions_rank
ORDER BY company_rank ASC;
