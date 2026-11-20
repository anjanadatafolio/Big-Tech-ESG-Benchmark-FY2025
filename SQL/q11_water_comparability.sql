-- Q11: Are the reported water metrics directly comparable across companies?
-- Pulls the whole Water category with NO comparable filter, so the comparable / reason /
-- confidence columns show exactly where scope and definitions differ.
WITH water_only AS (
    SELECT company, category, metric, value_numeric, unit, value_text, comparable, reason, confidence
    FROM esg_data
    WHERE category = 'Water'
)
SELECT company, metric, value_numeric, unit, value_text, comparable, reason, confidence
FROM water_only
ORDER BY company ASC;
