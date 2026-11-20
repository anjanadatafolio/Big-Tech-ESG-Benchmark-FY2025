-- Q5: How does total energy consumption compare, and why is Amazon excluded?
-- Amazon's row is NULL / comparable = 'No' (not disclosed company-wide), so it drops out.
-- This same query is also used for Q8 (AI / data center demand context).
WITH energy_only AS (
    SELECT company, metric, value_numeric, unit, comparable
    FROM esg_data
    WHERE metric = 'Total Energy Consumption'
      AND comparable = 'Yes'
)
SELECT company, metric, value_numeric, unit
FROM energy_only
ORDER BY company ASC;
