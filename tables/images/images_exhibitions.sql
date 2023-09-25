--* This table joins images table to exhibitions table
--* Multiple images can be attached to an exhibition
--* Only one image can be the main image for an exhibition

CREATE TABLE images_exhibitions (
  -- * METADATA
  image_id INT REFERENCES images (id),
  exhibition_id INT REFERENCES exhibitions(id),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  is_main_image BOOLEAN NOT NULL DEFAULT FALSE,
  caption TEXT,
  PRIMARY KEY (image_id, exhibition_id),
  UNIQUE (exhibition_id) WHERE (is_main_image = TRUE)
);