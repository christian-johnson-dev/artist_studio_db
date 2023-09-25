CREATE TABLE publications_people (
  -- * METADATA
  publication_id INT REFERENCES publications (id) NOT NULL,
  person_id INT REFERENCES people (id) NOT NULL,
  role_id INT REFERENCES publications_people_roles (id) NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (publication_id, person_id, role_id)
);
