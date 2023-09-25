--* This table joins images to edition tables (mainly to document state prints)
--* Multiple images can be attached to an edition piece

CREATE TABLE images_edition (
  -- * METADATA
  image_id INT REFERENCES images (id),
  edition_id INT REFERENCES edition (id),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  caption TEXT,
  PRIMARY KEY (image_id, edition_id)
);

-- Path: tables/images/images_edition.sql