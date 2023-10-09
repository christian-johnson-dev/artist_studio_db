
--* Basic queries

-- Get total of artworks by category. Order by desc totals.
SELECT
    category,
    COUNT(*) AS total
FROM
    artwork
GROUP BY
    category
ORDER BY
    total DESC;




