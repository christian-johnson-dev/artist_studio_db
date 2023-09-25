--* This table joins exhibitions, people, and the roles the people played in the exhibition (eg. curator, artist).

CREATE TABLE exhibitions_people (
  -- * METADATA
  exhibition_id INT REFERENCES exhibitions (id) NOT NULL,
  person_id INT REFERENCES people (id) NOT NULL,
  role_id INT REFERENCES exhibitions_people_roles (id) NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (exhibition_id, person_id, role_id)
);
