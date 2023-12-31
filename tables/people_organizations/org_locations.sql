CREATE TABLE org_locations (
  -- * METADATA
  id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  organization_id INT REFERENCES organizations (id) NOT NULL,
  name VARCHAR(255) -- * If left blank the name of the organization from the related organizations table will be used
);

-- * INDEXES
CREATE INDEX idx_organization_id ON org_locations (organization_id);