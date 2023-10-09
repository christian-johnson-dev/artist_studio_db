/* While multiple artwork_location records can be related to a single artwork or edition, only one of those records can be marked as the current location. 
This function and its trigger ensure that only one artwork_location record is marked as the current location for a given artwork or edition. 
It does so by removing previous is_current_location flags.*/

CREATE OR REPLACE FUNCTION update_current_location()
RETURNS TRIGGER AS $$
BEGIN

  -- If the new or updated record is marked as the current location
  IF NEW.is_current_location = TRUE THEN

    -- If the record is related to an artwork
    IF NEW.artwork_id IS NOT NULL THEN
      -- All other artwork_location records for this artwork should have is_current_location set to FALSE
      UPDATE artwork_location
      SET is_current_location = FALSE
      WHERE artwork_id = NEW.artwork_id
      AND is_current_location = TRUE
      -- Exclude the new or updated record from is_current_location = FALSE assignment
      AND id != NEW.id; 
    END IF;

    -- If the record is related to an edition repeat the above process to the edition piece
    IF NEW.edition_id IS NOT NULL THEN
      UPDATE artwork_location
      SET is_current_location = FALSE
      WHERE edition_id = NEW.edition_id
      AND is_current_location = TRUE
      AND id != NEW.id; 
    END IF;
  END IF;

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create or replace the trigger
DROP TRIGGER IF EXISTS update_current_location_trigger ON artwork_location;
CREATE TRIGGER update_current_location_trigger
BEFORE INSERT OR UPDATE ON artwork_location
FOR EACH ROW EXECUTE PROCEDURE update_current_location();