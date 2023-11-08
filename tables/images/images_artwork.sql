--* This table joins images to artworks tables
--* Multiple images can be attached to an artwork
--* Only one image can be the main image for an artwork

CREATE TABLE images_artwork (
  -- * METADATA
  image_id INT REFERENCES images (id) NOT NULL,
  artwork_id INT REFERENCES artworks (id) NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  is_main_image BOOLEAN NOT NULL DEFAULT FALSE,
  caption TEXT,
  PRIMARY KEY (image_id, artwork_id),
  UNIQUE (artwork_id) WHERE (is_main_image = TRUE)
);

-- Path: tables/images/images_artwork.sql


