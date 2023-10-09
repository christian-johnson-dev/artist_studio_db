/* TABLE artwork_storage holds information about the studio storage location of a piece*/

CREATE TABLE artwork_storage (
  -- * METADATA
  id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  -- * INFORMATION
  wrapping VARCHAR(255),
  location VARCHAR(255),
  sub_location VARCHAR(255)  
);

-- Path: tables/artworks/artwork_storage.sql

