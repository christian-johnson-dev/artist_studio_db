--* This table joins an artwork to a support.

CREATE TABLE artwork_support (
  artwork_id INT NOT NULL REFERENCES artwork (id),
  support_id INT NOT NULL REFERENCES supports (id),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (artwork_id, support_id)
);

-- Path: tables/artworks/artwork_support.sql
