--* This table joins artworks to mediums.

CREATE TABLE artwork_medium (
  artwork_id INT NOT NULL REFERENCES artwork (id),
  medium_id INT NOT NULL REFERENCES mediums (id),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  is_primary BOOLEAN DEFAULT FALSE NOT NULL,
  PRIMARY KEY (artwork_id, medium_id)
);

-- Path: tables/artworks/artwork_medium.sql