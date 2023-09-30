-- Create function to update the 'updated_at' column
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = CURRENT_TIMESTAMP;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Every table is given a trigger to update the 'updated_at' column with the above function
DO $$ 
DECLARE 
  table_name text;
BEGIN 
  FOR table_name IN (SELECT tablename FROM pg_tables WHERE schemaname = 'public') 
  LOOP
      EXECUTE 'CREATE TRIGGER update_' || table_name || '_modtime ' ||
              'BEFORE UPDATE ON ' || table_name || ' ' ||
              'FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();';
  END LOOP;
END;
$$;
