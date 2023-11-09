--* This table joins an artwork to a support.

CREATE TABLE artwork_support (
  artwork_id INT NOT NULL REFERENCES artwork (id),
  support_id INT NOT NULL REFERENCES supports (id),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (artwork_id, support_id)
);

--* Indexes
CREATE INDEX artwork_support_artwork_id_idx ON artwork_support (artwork_id);
CREATE INDEX artwork_support_support_id_idx ON artwork_support (support_id);

-- Path: tables/artworks/artwork_support.sql
