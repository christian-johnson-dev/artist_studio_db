--* This table joins images table to people table
--* Multiple images can be attached to a person
--* Only one image can be the main image for a person

CREATE TABLE images_people (
  -- * METADATA
  image_id INT REFERENCES images (id),
  person_id INT REFERENCES people (id),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  is_main_image BOOLEAN NOT NULL DEFAULT FALSE,
  caption TEXT,
  PRIMARY KEY (image_id, person_id),
  UNIQUE (person_id) WHERE (is_main_image = TRUE)
);

-- Path: tables/images/images_people.sql