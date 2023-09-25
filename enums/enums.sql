--* Used by artwork table and edition table
CREATE TYPE signature_status AS ENUM (
  'signed',
  'unsigned',
  'unknown'
);

CREATE TYPE artwork_condition AS ENUM (
  'excellent',
  'good',
  'damaged',
  'destroyed',
  'unknown'
);


-- Path: enums/enums.sql
