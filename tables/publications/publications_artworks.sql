--* This table joins an artwork to a publication

CREATE TABLE publications_artworks (
  -- * METADATA
  artwork_id INT REFERENCES artwork (id),
  publication_id INT REFERENCES publications (id),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  page_number INT,
  PRIMARY KEY (artwork_id, publication_id)
);

-- Path: tables/publications/publications_artworks.sql