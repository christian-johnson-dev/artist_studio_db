/* Blumenthal-Adler Gallery: Vancouver has asked to take two works on consignment. 
  The works are "Bucholia 1" and "Bucholia 2" (Each a confirmed unique title).
  This is not for an exhibition. (No exhibition record will be used)
  The gallery will take possession Aug 11, 2018.
  Until the artwork is actually sold, this change of location doesn't affect provenance.
*/

-- CTE method
WITH 
  artwork_ids AS (
    SELECT id FROM artwork WHERE title IN ('Bucholia 1', 'Bucholia 2')
  ),
  org_location_id AS (
    SELECT id FROM all_organizations WHERE name = 'Blumenthal-Adler Gallery: Vancouver'
  )
  INSERT INTO artwork_location (artwork_id, org_location_id, location_type, movement_date, is_current_location)
  SELECT artwork_ids.id, org_location_id.id, 'on consignment', '2018-08-11', TRUE
  FROM artwork_ids CROSS JOIN org_location_id;

-- To confirm the insert, run the following query :
SELECT * 
FROM artwork_location 
WHERE artwork_id IN (
  SELECT id FROM artwork WHERE title IN ('Bucholia 1', 'Bucholia 2')
  );




