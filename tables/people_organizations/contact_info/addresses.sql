--* This table is designed to store addresses associated with either people or organizations. 

CREATE TABLE addresses (
  -- * METADATA
  id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  person_id INT REFERENCES people (id),
  org_location_id INT REFERENCES org_locations (id),

  -- * ADDRESS
  address_type VARCHAR (100) NOT NULL DEFAULT 'main',
  line_1 VARCHAR (255) NOT NULL,
  line_2 VARCHAR (255),
  city VARCHAR (255) NOT NULL,
  prov_state VARCHAR (255) NOT NULL,
  postal_zip VARCHAR (255) NOT NULL,
  country VARCHAR (255) NOT NULL,
  notes TEXT,

-- Either an organization or a person must be attached. Can't be none and can't be both.
CHECK (
  (CASE WHEN org_location_id IS NOT NULL THEN 1 ELSE 0 END) +
  (CASE WHEN person_id IS NOT NULL THEN 1 ELSE 0 END) = 1
  )
);

-- * INDEXES
CREATE INDEX idx_addresses_person_id ON addresses (person_id);
CREATE INDEX idx_addresses_org_location_id ON addresses (org_location_id);

-- Path: tables/people_organizations/contact_info/addresses.sql


