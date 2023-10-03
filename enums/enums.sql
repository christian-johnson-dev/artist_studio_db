--* Used by artwork table and edition table
CREATE TYPE signature_status AS ENUM (
  'signed',
  'unsigned',
  'unknown',
  'NA'
);

CREATE TYPE artwork_condition AS ENUM (
  'excellent',
  'good',
  'damaged',
  'destroyed',
  'unknown',
  'NA'
);


-- Path: enums/enums.sql
