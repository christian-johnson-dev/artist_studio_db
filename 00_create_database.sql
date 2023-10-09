DROP DATABASE IF EXISTS art_studio;

CREATE DATABASE art_studio;
\c art_studio;
BEGIN;
  \i 01_create_functions_1.sql
  \i 02_create_tables.sql
  \i 03_create_functions_2.sql
  \i 04_seed_database.sql
  \i 05_create_views.sql
COMMIT;
-- Create the function that will update the updated_at column



