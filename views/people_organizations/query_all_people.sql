CREATE OR REPLACE VIEW all_people AS
SELECT
	pl.id AS id,
	first_name,
	last_name,
	CONCAT_WS(', ', line_1, line_2),
	city,
	prov_state,
	postal_zip AS zip,
	country,
	phone_number AS phone,
	email
FROM
	people pl
	LEFT JOIN addresses ad ON pl.id = ad.person_id
	LEFT JOIN emails em ON pl.id = em.person_id
	LEFT JOIN phone_numbers pn ON  pl.id = pn.person_id;