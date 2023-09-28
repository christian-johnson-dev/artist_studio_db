CREATE OR REPLACE FUNCTION create_edition_records(
  p_edition_meta_id INT, -- The ID of the edition_meta record to quantify how many edition records to create
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
  FOR counter IN 1..edition_meta_record.total_ed LOOP
    INSERT INTO edition (edition_meta_id, type, number, signature, available_purchase, available_exhibition, is_framed, condition)
    VALUES (p_edition_meta_id, 'ed', counter, p_signature, p_available_purchase, p_available_exhibition, p_is_framed, p_condition);
  END LOOP;

  FOR counter IN 1..edition_meta_record.total_pp LOOP
    INSERT INTO edition (edition_meta_id, type, number, signature, available_purchase, available_exhibition, is_framed, condition)
    VALUES (p_edition_meta_id, 'pp', counter, p_signature, p_available_purchase, p_available_exhibition, p_is_framed, p_condition);
  END LOOP;

  FOR counter IN 1..edition_meta_record.total_hc LOOP
    INSERT INTO edition (edition_meta_id, type, number, signature, available_purchase, available_exhibition, is_framed, condition)
    VALUES (p_edition_meta_id, 'hc', counter, p_signature, p_available_purchase, p_available_exhibition, p_is_framed, p_condition);
  END LOOP;

  FOR counter IN 1..edition_meta_record.total_ap LOOP
    INSERT INTO edition (edition_meta_id, type, number, signature, available_purchase, available_exhibition, is_framed, condition)
    VALUES (p_edition_meta_id, 'ap', counter, p_signature, p_available_purchase, p_available_exhibition, p_is_framed, p_condition);
  END LOOP;

  FOR counter IN 1..edition_meta_record.total_tp LOOP
    INSERT INTO edition (edition_meta_id, type, number, signature, available_purchase, available_exhibition, is_framed, condition)
    VALUES (p_edition_meta_id, 'tp', counter, p_signature, p_available_purchase, p_available_exhibition, p_is_framed, p_condition);
  END LOOP;

  FOR counter IN 1..edition_meta_record.total_bat LOOP
    INSERT INTO edition (edition_meta_id, type, number, signature, available_purchase, available_exhibition, is_framed, condition)
    VALUES (p_edition_meta_id, 'bat', counter, p_signature, p_available_purchase, p_available_exhibition, p_is_framed, p_condition);
  END LOOP;

  FOR counter IN 1..edition_meta_record.total_st LOOP
    INSERT INTO edition (edition_meta_id, type, number, signature, available_purchase, available_exhibition, is_framed, condition)
    VALUES (p_edition_meta_id, 'st', counter, p_signature, p_available_purchase, p_available_exhibition, p_is_framed, p_condition);
  END LOOP;
END;
$$ LANGUAGE plpgsql;


