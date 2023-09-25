CREATE TABLE publications_organizations (
  -- * METADATA
  publication_id INT REFERENCES publications (id) NOT NULL,
  organization_id INT REFERENCES organizations (id) NOT NULL,
  role_id INT REFERENCES publications_organizations_roles (id) NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (publication_id, organization_id, role_id)
)
