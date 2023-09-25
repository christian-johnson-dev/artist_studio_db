CREATE TABLE exhibitions_artworks (
  -- * METADATA
  exhibition_id INT REFERENCES exhibitions (id),
  artwork_id INT REFERENCES artwork (id),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (exhibition_id, artwork_id)
);
