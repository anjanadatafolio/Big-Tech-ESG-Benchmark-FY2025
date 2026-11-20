-- Q10: How much progress has each company made toward water replenishment / water-positive goals?
-- No comparable filter: scopes differ (Amazon = AWS-only, Google = company-wide).
-- value_text is selected because Microsoft's result is a milestone ('Achieved'), not a percentage.
WITH water_only AS (
    SELECT company, metric, value_numeric, unit, value_text
    FROM esg_data
    WHERE metric IN (
        'Water Positive Progress (AWS global)',
        'Water Positive Progress (India)',
        'Water Positive Status',
        'Water Replenishment Progress'
    )
)
SELECT *
FROM water_only
ORDER BY company ASC;
