CREATE OR REPLACE FUNCTION generate_catalog_number()
RETURNS TRIGGER AS $$
DECLARE 
  v_year INTEGER;
  v_sequence_number INTEGER;
  v_new_catalog_number VARCHAR (14);
BEGIN
  v_year := EXTRACT(YEAR FROM NEW.date_completed);
  SELECT last_sequence_number INTO v_sequence_number FROM artwork_sequence WHERE year = v_year AND category = NEW.category;

  -- If not found then initialize the sequence
  IF v_sequence_number IS NULL THEN
    v_sequence_number := 1;
  ELSE
    v_sequence_number := v_sequence_number + 1;
  END IF;

  -- Generate the new catalog number
  v_new_catalog_number := v_year || '.' || LPAD(enum_to_int(NEW.category)::TEXT, 2, '0') || '.' || LPAD(v_sequence_number::TEXT, 3, '0');
  NEW.catalog_number := v_new_catalog_number;

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER set_catalog_number
BEFORE INSERT ON artwork
FOR EACH ROW EXECUTE FUNCTION generate_catalog_number();

