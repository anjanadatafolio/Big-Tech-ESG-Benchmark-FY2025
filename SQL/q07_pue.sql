-- Q7: Which company operates the most energy-efficient data centers (PUE)?
-- Lower PUE = more efficient (1.0 is the theoretical minimum), so sort ASC.
WITH energy_only AS (
    SELECT company, metric, value_numeric, unit, comparable
    FROM esg_data
    WHERE metric = 'PUE'
      AND comparable = 'Yes'
)
SELECT company, metric, value_numeric, unit
FROM energy_only
ORDER BY value_numeric ASC;
