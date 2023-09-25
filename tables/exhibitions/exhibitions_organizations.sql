-- * This table joins tables organizations and exhibitions.  It allows for multi-venue traveling exhibitions.

CREATE TABLE exhibition_organizations (
  -- * METADATA
  exhibition_id INT REFERENCES exhibitions (id) NOT NULL,
  organization_id INT REFERENCES organizations (id) NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,

  -- * EXHIBITION ORGANIZATION
  opening_date DATE NOT NULL,
  closing_date DATE CHECK (closing_date >= opening_date),
  is_primary BOOLEAN NOT NULL DEFAULT FALSE,

  PRIMARY KEY (exhibition_id, organization_id)
);



-- Path: tables/primary/images/images_artwork.sql
