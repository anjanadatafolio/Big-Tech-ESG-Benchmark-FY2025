-- Q2: Which company had the lowest carbon intensity per revenue?
-- Metric names differ by company: Amazon/Microsoft = 'Carbon Intensity';
-- Google = 'Carbon Intensity (recalculated, GHGP-aligned)'.
-- Google's reported 35.9 g/$ (ambition-based) is excluded: comparable = 'No'.
WITH intensity_only AS (
    SELECT company, fiscal_year, metric, value_numeric, unit, comparable
    FROM esg_data
    WHERE fiscal_year = 2025
      AND comparable = 'Yes'
      AND metric IN (
          'Carbon Intensity',
          'Carbon Intensity (recalculated, GHGP-aligned)'
      )
),
intensity_rank AS (
    SELECT *,
           DENSE_RANK() OVER (ORDER BY value_numeric ASC) AS company_rank
    FROM intensity_only
)
SELECT company_rank, company, fiscal_year, metric, value_numeric, unit
FROM intensity_rank
ORDER BY company_rank ASC;
