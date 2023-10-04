/*  This table is referenced when the db generates a catalog number. 
    A catalog number comprises the year, category, and sequence number.
    example: 2010.01.002 would be the second drawing (category 01) cataloged in 2010.
    This table tracks the highest sequence number for each year and category.
    Upon generation of an artwork record the db will increment the respective sequence number for that year and category
*/

CREATE TABLE artwork_sequence (
  --* METADATA
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  --* Max sequence number for each year and category
  year INTEGER NOT NULL,
  category artwork_category NOT NULL,
  last_sequence_number INTEGER NOT NULL,
  PRIMARY KEY (year, category)
);

