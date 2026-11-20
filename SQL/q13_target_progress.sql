-- Q13: Are companies on track to achieve their stated climate targets?
-- SQL gives only the FY2025 snapshot (current emissions + target year).
-- "On track" is a trajectory judgment that needs multi-year data, so it is written up as narrative.
WITH target_yr AS (
    SELECT company, metric, value_numeric, unit, value_text, comparable, reason, notes, confidence
    FROM esg_data
    WHERE metric IN ('Total Emissions (GHGP-aligned)', 'Target Year')
)
SELECT *
FROM target_yr
ORDER BY company ASC;
