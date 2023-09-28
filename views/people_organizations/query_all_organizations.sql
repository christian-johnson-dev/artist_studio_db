CREATE OR REPLACE VIEW all_organizations AS
SELECT
	ol.id,
	CONCAT_WS(': ', og.name,ol.name) AS name,
	CONCAT_WS(', ', line_1, line_2),
	city,
	prov_state,
	postal_zip AS zip,
	country,
	phone_number  AS phone,
	email
FROM
	org_locations ol
	JOIN organizations og ON ol.organization_id = og.id
	JOIN addresses ad ON ad.org_location_id = ol.id
	JOIN phone_numbers pn ON pn.org_location_id = ol.id
	JOIN emails em ON em.org_location_id = ol.id;