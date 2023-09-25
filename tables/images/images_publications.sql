--* This table joins images table to publications table
--* Multiple images can be attached to a publication
--* Only one image can be the main image for a publication

CREATE TABLE images_publications (
  -- * METADATA
  image_id INT REFERENCES images (id),
  publication_id INT REFERENCES publications (id),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  is_main_image BOOLEAN NOT NULL DEFAULT FALSE,
  caption TEXT,
  PRIMARY KEY (image_id, publication_id),
  UNIQUE (publication_id) WHERE (is_main_image = TRUE)
);

-- Path: tables/images/images_publications.sql