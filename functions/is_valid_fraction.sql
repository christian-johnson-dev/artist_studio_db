--* This is a helper function to validate if the decimal portion of a number is a valid x/16th fraction.
CREATE OR REPLACE FUNCTION is_valid_fraction (value NUMERIC) RETURNS BOOLEAN AS $$
BEGIN
    RETURN 
        (value - TRUNC(value)) * 16 BETWEEN 0 AND 15  -- This checks to see if the decimal is in the range of 0/16 to 15/16, inclusive.
        AND
        FLOOR((value - TRUNC(value)) * 16) = (value - TRUNC(value)) * 16; -- This checks to see if the decimal is a multiple of 1/16.
END;
$$ LANGUAGE plpgsql IMMUTABLE;