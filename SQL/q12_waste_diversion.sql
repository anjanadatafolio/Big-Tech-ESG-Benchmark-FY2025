-- Q12: How do waste diversion rates differ across companies?
-- Amazon's company-wide metric is named differently from Microsoft's/Google's.
-- Amazon's Devices-only 99% is excluded (comparable = 'No', sub-segment scope).
WITH waste_only AS (
    SELECT company, metric, value_numeric, unit, comparable
    FROM esg_data
    WHERE metric IN ('Waste Diversion Rate (company-wide)', 'Waste Diversion Rate')
      AND comparable = 'Yes'
)
SELECT company, metric, value_numeric, unit
FROM waste_only
ORDER BY company ASC;
