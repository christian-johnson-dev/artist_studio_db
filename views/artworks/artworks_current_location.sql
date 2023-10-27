CREATE OR REPLACE VIEW artworks_current_location AS
SELECT
  --artwork id
    ar.id AS record_id,
  --catalog number
    catalog_number,
  --title (including series name if applicable) and if title is 'Untitled' include catalog number
    CASE
      WHEN ar.title = 'Untitled' THEN
        CONCAT('Untitled (', TRIM(catalog_number),')')
        ELSE
        CONCAT_WS(': ', se.name, ar.title) 
    END AS full_title,
  --category
    ar.category AS category,
  --support and medium
    CONCAT(regexp_replace(string_agg(DISTINCT md.name, ', ' ORDER BY md.name), ',([^,]*)$', ' and\1'), CASE WHEN string_agg(DISTINCT md.name, ', ') IS NOT NULL
            AND string_agg(DISTINCT su.name, ', ') IS NOT NULL THEN
            ' on '
        ELSE
            ''
        END, string_agg(DISTINCT su.name, ', ' ORDER BY su.name)) AS medium_support,
  --dimensions
    CONCAT(CONCAT_WS(' x ', trim_trailing_zeros (height_in), trim_trailing_zeros (width_in), trim_trailing_zeros (depth_in)), ' inches') AS dimensions,
  --current location
    CASE
      WHEN al.person_id IS NOT NULL THEN first_name || ' ' || last_name
      WHEN al.org_location_id IS NOT NULL THEN CONCAT_WS(': ', og.name, ol.name)
      ELSE 'unknown'
    END AS current_location,
  --location status
	al.location_type AS location_status,
  --location date
	al.movement_date AS location_date
FROM
    artwork ar
    LEFT JOIN singular_attributes sa ON ar.singular_attributes_id = sa.id
    LEFT JOIN series se ON se.id = ar.series_id
    LEFT JOIN artwork_medium amd ON amd.artwork_id = ar.id
    LEFT JOIN mediums md ON amd.medium_id = md.id
    LEFT JOIN artwork_support asu ON asu.artwork_id = ar.id
    LEFT JOIN supports su ON asu.support_id = su.id
    LEFT JOIN artwork_location al ON ar.id = al.artwork_id
    LEFT JOIN people ON people.id = al.person_id
    LEFT JOIN org_locations ol ON al.org_location_id = ol.id
    LEFT JOIN organizations og ON ol.organization_id = og.id
GROUP BY
    ar.id,
    catalog_number,
    se.name,
    ar.title,
    ar.category,
    height_in,
    width_in,
    depth_in,
    al.person_id,
    al.org_location_id,
    al.location_type,
    al.movement_date,
    al.is_current_location,
    people.last_name,
    people.first_name,
    ol.name,
    og.name
HAVING
  al.is_current_location = TRUE
ORDER BY
    catalog_number ASC
