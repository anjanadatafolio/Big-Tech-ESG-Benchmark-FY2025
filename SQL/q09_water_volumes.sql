-- Q9: Which company consumes the most water, and why is Amazon excluded?
-- Google's consumption metric is named 'Water Consumption (total)'; Microsoft's is 'Water Consumption'.
-- Amazon has no company-wide volumes (comparable = 'No'), so it drops out.
WITH water_only AS (
    SELECT company, metric, value_numeric, unit, comparable
    FROM esg_data
    WHERE metric IN ('Water Withdrawal', 'Water Consumption', 'Water Consumption (total)')
      AND comparable = 'Yes'
)
SELECT company, metric, value_numeric, unit
FROM water_only
ORDER BY company ASC;
