-- Q6: Are the three companies' renewable energy claims directly comparable?
-- Deliberately NO comparable filter: the non-comparable rows are the evidence.
-- Metric names are irregular, so they are listed explicitly rather than matched with LIKE.
WITH energy_only AS (
    SELECT company, metric, value_numeric, unit, comparable, reason, confidence
    FROM esg_data
    WHERE metric IN (
        'Renewable Electricity Match',
        'Renewable Match (direct, incl. grid mix)',
        'Renewable Match (matched, excl. grid mix)',
        '24/7 Carbon-Free Energy (CFE)'
    )
)
SELECT *
FROM energy_only
ORDER BY company ASC;
