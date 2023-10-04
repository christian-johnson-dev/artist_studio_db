CREATE OR REPLACE FUNCTION enum_to_int(enum_value ANYENUM)
RETURNS INTEGER AS $$
DECLARE
  enum_type  regtype;
  enum_label text;
  i          integer;
BEGIN
  enum_type := pg_typeof(enum_value);
  FOR i, enum_label IN
    SELECT generate_series(1, array_length(enum_range(NULL::artwork_category), 1)),
           unnest(enum_range(NULL::artwork_category))
  LOOP
    IF enum_label = enum_value::text THEN
      RETURN i;
    END IF;
  END LOOP;
  RAISE EXCEPTION 'Invalid ENUM value: %', enum_value;
END;
$$ LANGUAGE plpgsql;