DROP DATABASE IF EXISTS art_studio;

CREATE DATABASE art_studio;
\c art_studio;
-- BEGIN;
  \i 01_create_tables.sql
  \i 02_create_functions.sql
  \i 03_seed_database.sql
  \i 04_create_views.sql

-- COMMIT;
-- Create the function that will update the updated_at column



