DROP DATABASE IF EXISTS art_studio;

CREATE DATABASE art_studio;
\c art_studio;
-- BEGIN;
  \i enums/enums.sql
  \i tables/artworks/series.sql
  \i tables/artworks/artwork.sql 
  \i tables/people_organizations/organizations.sql
  \i tables/people_organizations/org_locations.sql
  \i tables/people_organizations/people.sql
  \i tables/people_organizations/people_organizations.sql 
  \i tables/people_organizations/artwork_models.sql 
  \i tables/people_organizations/contact_info/emails.sql 
  \i tables/people_organizations/contact_info/phone_numbers.sql 
  \i tables/people_organizations/contact_info/addresses.sql 
  \i tables/artworks/supports.sql
  \i tables/artworks/mediums.sql
  \i tables/artworks/artwork_support.sql
  \i tables/artworks/artwork_medium.sql
  \i tables/artworks/edition_meta.sql
  \i tables/artworks/edition.sql
  \i tables/artworks/damage.sql
  \i tables/exhibitions/exhibitions.sql 
  \i tables/exhibitions/exhibitions_people_roles.sql
  \i tables/exhibitions/exhibitions_artworks.sql
  \i tables/exhibitions/exhibitions_organizations.sql
  \i tables/exhibitions/exhibitions_people.sql 
  \i tables/publications/publications.sql
  \i tables/publications/publications_exhibitions.sql
  \i tables/publications/publications_people_roles.sql
  \i tables/publications/publications_people.sql 
  \i tables/publications/publications_organizations_roles.sql
  \i tables/publications/publications_organizations.sql
  \i tables/publications/publications_artworks.sql
-- COMMIT;

-- Create the function that will update the updated_at column
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = CURRENT_TIMESTAMP;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create triggers for all tables in the public schema
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



