CREATE OR REPLACE FUNCTION new_artwork_sculpture (
  p_completion_date DATE,
  p_date_circa BOOLEAN DEFAULT FALSE,
  p_title VARCHAR (255) DEFAULT 'Untitled',
  p_series_id INT DEFAULT NULL,
  p_height_in NUMERIC (8, 4) DEFAULT NULL,
  p_width_in NUMERIC (8, 4) DEFAULT NULL,
  p_depth_in NUMERIC (8, 3) DEFAULT NULL,
  p_weight_lbs NUMERIC (5, 2) DEFAULT NULL,
  p_pieces_number INT DEFAULT 1,
  p_signature signature_status DEFAULT 'unknown',
  p_condition artwork_condition DEFAULT 'unknown',
  --owner type is either 'person' or 'organization'
  p_owner_type owner_type NOT NULL,
  p_owner_id INT NOT NULL,
  
)
RETURNS VOID AS $$
DECLARE
  v_year VARCHAR (4);
  v_last_catalog_number VARCHAR (14);
  v_new_catalog_number VARCHAR (14);
  v_sequence_number INT;
BEGIN
  --Extract the year from the completion date
  v_year := EXTRACT(YEAR FROM p_completion_date)::VARCHAR (4);

  --Fetch the last catalog number for the same year and 'sculpture' category
  SELECT MAX(CAST(SUBSTRING(catalog_number, 9, 3) AS INT)) 
  INTO v_sequence_number
  FROM artwork
  WHERE SUBSTRING(catalog_number, 1, 4) = v_year 
    AND category = 'sculpture';

  --If found, increment the sequence number, else start a new sequence
  IF v_sequence_number IS NOT NULL THEN
    v_sequence_number := v_sequence_number + 1;
  ELSE
    v_sequence_number := 1;
  END IF;

  -- Generate the new catalog number
  v_new_catalog_number := v_year || '.04.' || LPAD(v_sequence_number:: TEXT, 3, '0');

  -- Insert the new artwork record
  INSERT INTO artwork (
    catalog_number,
    title,
    category,
    series_id,
    date_completed,
    date_circa,
    height_in,
    width_in,
    depth_in,
    weight_lbs,
    pieces_number
  )
  VALUES (
    v_new_catalog_number,
    p_title,
    'sculpture',
    p_series_id,
    p_completion_date,
    p_date_circa,
    p_height_in,
    p_width_in,
    p_depth_in,
    p_weight_lbs,
    p_pieces_number
  );


  END;
$$ LANGUAGE plpgsql;
  