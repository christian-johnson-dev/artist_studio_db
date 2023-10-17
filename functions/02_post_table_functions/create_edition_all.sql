CREATE OR REPLACE FUNCTION create_edition_records(
  p_edition_meta_id INT, -- The ID of the edition_meta record to quantify how many edition records to create
  p_movement_date DATE, -- The date the edition was brought into the studio
  p_signature signature_status DEFAULT 'unknown',
  p_available_purchase BOOLEAN DEFAULT TRUE,
  p_available_exhibition BOOLEAN DEFAULT TRUE,
  p_is_framed BOOLEAN DEFAULT FALSE,
  p_condition artwork_condition DEFAULT 'unknown'
)
RETURNS VOID AS $$
DECLARE
  edition_meta_record edition_meta%ROWTYPE;
  existing_records INT;
  v_new_edition_id INT;
  v_new_sing_attr_id INT;
BEGIN
  -- Check if any edition records already exist for the edition_meta record
  SELECT COUNT(*) INTO existing_records FROM edition WHERE edition_meta_id = p_edition_meta_id;

  IF existing_records > 0 THEN
    RAISE EXCEPTION 'Edition records already exist for edition_meta record with id %. Process aborted', p_edition_meta_id;
  END IF;

  -- Fetch the edition_meta record that matches the function's first argument
  SELECT * INTO edition_meta_record FROM edition_meta WHERE id = p_edition_meta_id;

  -- Validate that the edition_meta record exists
  IF edition_meta_record IS NULL THEN 
    RAISE EXCEPTION 'Edition_meta record with id % does not exist. Process aborted', p_edition_meta_id;
  END IF;

  -- Create records for each edition type and their total counts
  -- ED RECORDS
  FOR counter IN 1..edition_meta_record.total_ed LOOP
    -- 1. Insert into singular attributes
    INSERT INTO singular_attributes (signature, available_purchase, available_exhibition, is_framed, condition)
    VALUES (p_signature, p_available_purchase, p_available_exhibition, p_is_framed, p_condition)
    RETURNING id INTO v_new_sing_attr_id;
    -- 2. Insert into edition table
    INSERT INTO edition (edition_meta_id, type, number, singular_attributes_id)
    VALUES (p_edition_meta_id, 'ed', counter, v_new_sing_attr_id)
    RETURNING id INTO v_new_edition_id;
    -- 3. Insert into artwork_location assigning location to studio
    INSERT INTO artwork_location (edition_id, org_location_id, location_type, movement_date, is_current_location)
    VALUES (v_new_edition_id, 1, 'in storage', p_movement_date, TRUE);
  END LOOP;

  -- PP RECORDS
  FOR counter IN 1..edition_meta_record.total_pp LOOP
    INSERT INTO singular_attributes (signature, available_purchase, available_exhibition, is_framed, condition)
    VALUES (p_signature, p_available_purchase, p_available_exhibition, p_is_framed, p_condition)
    RETURNING id INTO v_new_sing_attr_id;
    INSERT INTO edition (edition_meta_id, type, number, singular_attributes_id)
    VALUES (p_edition_meta_id, 'pp', counter, v_new_sing_attr_id)
    RETURNING id INTO v_new_edition_id;
    INSERT INTO artwork_location (edition_id, org_location_id, location_type, movement_date, is_current_location)
    VALUES (v_new_edition_id, 1, 'in storage', p_movement_date, TRUE);
  END LOOP;

  -- HC RECORDS
  FOR counter IN 1..edition_meta_record.total_hc LOOP
    INSERT INTO singular_attributes (signature, available_purchase, available_exhibition, is_framed, condition)
    VALUES (p_signature, p_available_purchase, p_available_exhibition, p_is_framed, p_condition)
    RETURNING id INTO v_new_sing_attr_id;
    INSERT INTO edition (edition_meta_id, type, number, singular_attributes_id)
    VALUES (p_edition_meta_id, 'hc', counter, v_new_sing_attr_id)
    RETURNING id INTO v_new_edition_id;
    INSERT INTO artwork_location (edition_id, org_location_id, location_type, movement_date, is_current_location)
    VALUES (v_new_edition_id, 1, 'in storage', p_movement_date, TRUE);
  END LOOP;

  -- AP RECORDS
  FOR counter IN 1..edition_meta_record.total_ap LOOP
    INSERT INTO singular_attributes (signature, available_purchase, available_exhibition, is_framed, condition)
    VALUES (p_signature, p_available_purchase, p_available_exhibition, p_is_framed, p_condition)
    RETURNING id INTO v_new_sing_attr_id;
    INSERT INTO edition (edition_meta_id, type, number, singular_attributes_id)
    VALUES (p_edition_meta_id, 'ap', counter, v_new_sing_attr_id)
    RETURNING id INTO v_new_edition_id;
    INSERT INTO artwork_location (edition_id, org_location_id, location_type, movement_date, is_current_location)
    VALUES (v_new_edition_id, 1, 'in storage', p_movement_date, TRUE);
  END LOOP;

  -- TP RECORDS
  FOR counter IN 1..edition_meta_record.total_tp LOOP
    INSERT INTO singular_attributes (signature, available_purchase, available_exhibition, is_framed, condition)
    VALUES (p_signature, p_available_purchase, p_available_exhibition, p_is_framed, p_condition)
    RETURNING id INTO v_new_sing_attr_id;
    INSERT INTO edition (edition_meta_id, type, number, singular_attributes)
    VALUES (p_edition_meta_id, 'tp', counter, v_new_sing_attr_id)
    RETURNING id INTO v_new_edition_id;
    INSERT INTO artwork_location (edition_id, org_location_id, location_type, movement_date, is_current_location)
    VALUES (v_new_edition_id, 1, 'in storage', p_movement_date, TRUE);
  END LOOP;

  -- BAT RECORDS
  FOR counter IN 1..edition_meta_record.total_bat LOOP
    INSERT INTO singular_attributes (signature, available_purchase, available_exhibition, is_framed, condition)
    VALUES (p_signature, p_available_purchase, p_available_exhibition, p_is_framed, p_condition)
    RETURNING id INTO v_new_sing_attr_id;
    INSERT INTO edition (edition_meta_id, type, number, singular_attributes)
    VALUES (p_edition_meta_id, 'bat', counter, v_new_sing_attr_id)
    RETURNING id INTO v_new_edition_id;
    INSERT INTO artwork_location (edition_id, org_location_id, location_type, movement_date, is_current_location)
    VALUES (v_new_edition_id, 1, 'in storage', p_movement_date, TRUE);
  END LOOP;

  -- ST RECORDS
  FOR counter IN 1..edition_meta_record.total_st LOOP
    INSERT INTO singular_attributes (signature, available_purchase, available_exhibition, is_framed, condition)
    VALUES (p_signature, p_available_purchase, p_available_exhibition, p_is_framed, p_condition)
    RETURNING id INTO v_new_sing_attr_id;
    INSERT INTO edition (edition_meta_id, type, number, singular_attributes_id)
    VALUES (p_edition_meta_id, 'st', counter, v_new_sing_attr_id)
    RETURNING id INTO v_new_edition_id;
    INSERT INTO artwork_location (edition_id, org_location_id, location_type, movement_date, is_current_location)
    VALUES (v_new_edition_id, 1, 'in storage', p_movement_date, TRUE);
  END LOOP;
END;
$$ LANGUAGE plpgsql;


