--*  This table joins tables 'organizations' and 'people' and defines a person's role in an organization.

CREATE TABLE people_organizations (
  -- * METADATA
  people_id INT REFERENCES people (id) NOT NULL,
  org_location_id INT REFERENCES org_locations (id) NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  -- * ROLE
  role VARCHAR (100) NOT NULL,

  PRIMARY KEY (people_id, org_location_id)
);




-- Path: tables/primary/people_locations/people_organizations.sql