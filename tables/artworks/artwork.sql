-- * The 'artwork' table stores essential details about each artwork, including its identification, measurements, markings, and current status.

CREATE TYPE artwork_category AS ENUM (
	'drawing',
	'painting',
	'printmaking',
	'sculpture',
	'photography',
	'digital'
);




CREATE TABLE artwork (
  -- * METADATA
	id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,

  -- * IDENTIFICATION
	catalog_number VARCHAR (14) NOT NULL UNIQUE,
	title VARCHAR (255) DEFAULT 'Untitled' NOT NULL,
  series_id INT REFERENCES series (id),
  category artwork_category NOT NULL,

  -- * DATES
	date_started DATE CHECK (date_started <= CURRENT_DATE AND date_started <= date_completed),
	date_completed DATE NOT NULL CHECK (date_completed <= CURRENT_DATE),
	date_circa BOOLEAN DEFAULT FALSE,
  
  -- * MEASUREMENTS
	height_in NUMERIC (8, 4) CONSTRAINT valid_height_fractions CHECK(
    height_in >= 0 AND
    (height_in - TRUNC (height_in)) * 16 BETWEEN 0 AND 15 ),

	width_in NUMERIC (8, 4) CONSTRAINT valid_width_fractions CHECK(
    width_in >= 0 AND
    (width_in - TRUNC (width_in)) * 16 BETWEEN 0 AND 15 ),

	depth_in NUMERIC (8, 3) NULL CONSTRAINT valid_depth_fractions CHECK(
    depth_in IS NULL OR 
    (depth_in - TRUNC (depth_in)) * 16 BETWEEN 0 AND 15 ),

	weight_lbs NUMERIC (5, 2),
  pieces_number INT DEFAULT 1 CHECK (pieces_number >= 1),
  size_approximate BOOLEAN DEFAULT FALSE,
  size_irregular BOOLEAN DEFAULT FALSE,

  -- * MARKINGS
  signature signature_status DEFAULT 'unknown' NOT NULL, 
  signature_location VARCHAR (255),
  inscription VARCHAR (255),
  inscriptions_location VARCHAR (255),
	
  -- * STATUS
  available_exhibition BOOLEAN DEFAULT TRUE NOT NULL,
  available_purchase BOOLEAN DEFAULT TRUE NOT NULL,
  condition artwork_condition DEFAULT 'unknown' NOT NULL,

  storage_location VARCHAR (255),
  is_framed BOOLEAN DEFAULT FALSE NOT NULL,
  

	CHECK (
		(category = 'sculpture' AND depth_in > 0) OR
		(category != 'sculpture' AND (depth_in IS NULL OR depth_in > 0))
	)
);

-- Path: tables/artworks/artwork.sql