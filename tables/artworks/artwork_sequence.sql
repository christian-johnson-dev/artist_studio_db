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

