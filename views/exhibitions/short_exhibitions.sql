CREATE VIEW
    short_exhibitions AS
WITH numbered_exhibitions AS (
    SELECT  ex.id AS exhibition_id,
            ex.title,
            ao.name AS location,
            (to_char(eo.opening_date, 'Mon') || ', ') || to_char(eo.opening_date, 'YYYY') AS date,
            row_number() OVER (PARTITION BY ex.title ORDER BY eo.is_primary, eo.opening_date) AS rn
    FROM exhibitions ex
    JOIN exhibitions_organizations eo ON ex.id = eo.exhibition_id
    JOIN all_organizations ao ON eo.org_location_id = ao.id
    WHERE ex.include_short_bib = true
), 
first_venue AS (
    SELECT  numbered_exhibitions.exhibition_id,
            numbered_exhibitions.title,
            ((numbered_exhibitions.location || ' (') || numbered_exhibitions.date) || ')' AS original_venue
    FROM numbered_exhibitions
    WHERE numbered_exhibitions.rn = 1
), 
traveling_venues AS (
    SELECT  numbered_exhibitions.exhibition_id,
            numbered_exhibitions.title,
            string_agg(((numbered_exhibitions.location || ' (') || numbered_exhibitions.date) || ')', ', ' ORDER BY numbered_exhibitions.rn) AS traveling_venue
    FROM numbered_exhibitions
    WHERE numbered_exhibitions.rn > 1
    GROUP BY numbered_exhibitions.exhibition_id, numbered_exhibitions.title
)
SELECT  f.exhibition_id,
        f.title,
        f.original_venue ||
            CASE
                WHEN t.traveling_venue IS NOT NULL THEN ' traveling to ' || t.traveling_venue
                ELSE ''
            END AS exhibition_info
FROM first_venue f
LEFT JOIN traveling_venues t ON f.exhibition_id = t.exhibition_id;
