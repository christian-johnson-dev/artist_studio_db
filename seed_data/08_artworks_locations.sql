-- 1. Initially set all artworks to be at the studio (org_location_id = 1) on 2010-12-12
INSERT INTO artwork_location (artwork_id, org_location_id, in_date, provenance_record, notes)
SELECT id, 1, DATE '2010-12-12', TRUE, 'Initial input of records'
FROM artwork
WHERE id NOT IN (SELECT artwork_id FROM artwork_location); -- only insert if not already present


-- 2. Set all artworks that are editions to be at the studio (org_location_id = 1) on 2010-12-12
INSERT INTO artwork_location (edition_id, org_location_id, in_date, provenance_record, notes)
SELECT id, 1, DATE '2010-12-12', TRUE,'Initial input of records'
FROM edition
WHERE id NOT IN (SELECT edition_id FROM artwork_location); -- only insert if not already present
