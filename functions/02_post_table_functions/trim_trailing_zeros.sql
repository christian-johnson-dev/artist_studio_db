CREATE OR REPLACE FUNCTION trim_trailing_zeros (n numeric)
    RETURNS text
    LANGUAGE plpgsql
    AS $$
DECLARE
    str text;
BEGIN
    -- Convert the numeric input to text
    str := n::text;
    -- Check if there is a decimal point
    IF POSITION('.' IN str) > 0 THEN
        -- Remove trailing zeros and then the trailing dot if any
        str := TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM str));
    END IF;
    -- Return the result
    RETURN str;
END;
$$;

