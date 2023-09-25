--*  This table joins publications and exhibitions and labels the relationship 


CREATE TYPE pub_ex_type AS ENUM ('catalog', 'review', 'other');

CREATE TABLE publications_exhibitions (
  -- * METADATA
  publication_id INT REFERENCES publications (id) NOT NULL,
  exhibition_id INT REFERENCES exhibitions (id) NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  -- * TYPE
  type pub_ex_type NOT NULL DEFAULT 'catalog',
  PRIMARY KEY (publication_id, exhibition_id)
);
