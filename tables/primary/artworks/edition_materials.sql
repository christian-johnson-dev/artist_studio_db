/* 
This table tracks the status and location of production materials (molds, negatives, printing plates, etc.) for an editioned artwork.
It is a child of the edition_summary table.
Since it is for one specific item (a mold, negative, printing plate, etc.) it is directly joined to an organization or person
 */

CREATE TABLE support_materials (
  --* METADATA
  id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,

  --* MATERIAL INFO
  edition_summary_id INT NOT NULL REFERENCES edition_summary (id), -- the edition summary this material is a part of
  location_id INT REFERENCES locations (id), -- the location of the material
  people_id INT REFERENCES people (id), -- the person who owns the material
  material VARCHAR (255), -- what the material is (i.e. mold, negative, printing plate, etc.)
  status VARCHAR (255), -- the status of the material
  notes TEXT, -- any notes about the status or location of the material
  CHECK (
    (location_id IS NOT NULL AND people_id IS NULL)
    OR 
    (location_id IS NULL AND people_id IS NOT NULL)
    )
  );