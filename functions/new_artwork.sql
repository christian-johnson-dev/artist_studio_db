CREATE OR REPLACE FUNCTION new_artwork(
  p_category artwork_category,
  p_completion_date DATE,
  p_support_names TEXT[],
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
  p_medium_names TEXT[] DEFAULT NULL,
  p_in_date DATE DEFAULT NULL
  )
RETURNS VOID AS $$
DECLARE
  v_artwork_id INT;
  v_medium_id INT;
  v_support_id INT;
  v_medium_name TEXT;
  v_support_name TEXT;

BEGIN
  -- Validate  NOT NULL parameters
  IF p_category IS NULL THEN
    RAISE EXCEPTION 'CATEGORY ERROR: p_category cannot be NULL';
  END IF;

  IF p_completion_date IS NULL THEN
    RAISE EXCEPTION 'DATE ERROR: p_completion_date cannot be NULL';
  END IF;

  IF p_support_names IS NULL THEN
    RAISE EXCEPTION 'SUPPORT ERROR: p_support_names cannot be NULL';
  END IF;

  -- Set p_in_date to p_completion_date if NULL
  IF p_in_date IS NULL THEN
    p_in_date := p_completion_date;
  END IF;

  -- Insert the new artwork record
  INSERT INTO artwork (
    title,
    category,
    series_id,
    date_completed,
    date_circa,
    height_in,
    width_in,
    depth_in,
    weight_lbs,
    pieces_number,
    condition,
    signature
  )
  VALUES (
    p_title,
    p_category,
    p_series_id,
    p_completion_date,
    p_date_circa,
    p_height_in,
    p_width_in,
    p_depth_in,
    p_weight_lbs,
    p_pieces_number,
    p_condition,
    p_signature
  )
  RETURNING id INTO v_artwork_id;  -- Captures new artwork's id

  -- Insert associated mediums
  IF p_medium_names IS NOT NULL AND array_length(p_medium_names, 1) > 0 THEN
    FOREACH v_medium_name IN ARRAY p_medium_names
    LOOP
      SELECT id INTO v_medium_id FROM mediums WHERE name = v_medium_name;
      IF v_medium_id IS NOT NULL THEN
        INSERT INTO artwork_medium (artwork_id, medium_id)
        VALUES (v_artwork_id, v_medium_id);
      ELSE
        RAISE EXCEPTION 'MEDIUM ERROR: Medium % not found', v_medium_name;
      END IF;
    END LOOP;
  END IF;

  -- Insert associated supports
  FOREACH v_support_name IN ARRAY p_support_names
  LOOP
    SELECT id INTO v_support_id FROM supports WHERE name = v_support_name;
    IF v_support_id IS NOT NULL THEN
      INSERT INTO artwork_support (artwork_id, support_id)
      VALUES (v_artwork_id, v_support_id);
    ELSE
      RAISE EXCEPTION 'SUPPORT ERROR: Support % not found', v_support_name;
    END IF;
  END LOOP;
  -- Insert into artwork_location as in studio
  INSERT INTO artwork_location (artwork_id, org_location_id, location_type, in_date, provenance_record)
  VALUES (v_artwork_id, 1, 'in storage', p_in_date, TRUE);
END;
$$ LANGUAGE plpgsql;