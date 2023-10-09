CREATE OR REPLACE FUNCTION update_last_sequence_number()
RETURNS TRIGGER AS $$
BEGIN
  INSERT INTO artwork_sequence(year, category, last_sequence_number)
  VALUES (
    EXTRACT(YEAR FROM NEW.date_completed), 
    NEW.category, 
    CAST(RIGHT(NEW.catalog_number, 3) AS INTEGER)
    )
  ON CONFLICT (year, category)
  DO UPDATE SET last_sequence_number = EXCLUDED.last_sequence_number;

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_last_sequence_number
AFTER INSERT ON artwork
FOR EACH ROW EXECUTE FUNCTION update_last_sequence_number();

