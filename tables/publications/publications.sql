CREATE TYPE publication_type AS ENUM ('book', 'audio', 'video', 'article', 'other');


CREATE TABLE publications (
  -- * METADATA
  id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,

  -- * PUBLICATION
  title VARCHAR (255) NOT NULL,
  pub_date DATE NOT NULL ,
  pages VARCHAR (20),
  include_short_bib BOOLEAN NOT NULL DEFAULT TRUE,
  include_full_bib BOOLEAN NOT NULL DEFAULT TRUE,
  url VARCHAR (255),
  pub_type publication_type NOT NULL DEFAULT 'book',
  description TEXT
);

-- Path: tables/primary/publications/publications.sql
