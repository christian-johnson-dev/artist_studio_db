CREATE TYPE signature_status AS ENUM (
	'front',
	'back',
	'unsigned',
	'unknown'
);
CREATE TYPE artwork_category AS ENUM (
	'drawing',
	'painting',
	'printmaking',
	'sculpture',
	'photography',
	'digital'
);

CREATE TYPE edition_category AS ENUM (
  'ed', -- edition
  'ap', -- artist's proof
  'pp', -- printer's proof
  'hc', -- hors de commerce
  'tp', -- trial proof
  'sp', -- state proof
  'bt'  -- bon à tirer
);

CREATE TYPE edition_participant_role AS ENUM (
  'publisher',
  'fabricator',
  'printmaker'
);

CREATE TYPE artwork_status AS ENUM (
  'in storage',
  'sold',
  'gifted',
  'donated',
  'on loan',
  'damaged',
  'reserved',
  'consignment',
  'destroyed',
  'missing'
);

CREATE TYPE media_type AS ENUM (
  'print', -- monographs, exhibition catalogs, surveys, etc.
  'broadcast', -- radio, television, etc.
  'online' -- websites, blogs, etc.
);

CREATE TYPE print_type AS ENUM (
  'monograph', -- a book just on the artist
  'catalog', -- a book on an exhibition
  'survey', -- a book on a group of artists or periods
  'periodical', -- a magazine or journal
  'newspaper', -- a newspaper
  'other' -- other
)

CREATE TYPE online_type AS ENUM (
  'website', -- a website
  'blog', -- a blog
  'social media', -- a social media account
  'other' -- other
)

CREATE TYPE broadcast_type AS ENUM (
  'radio', -- a radio broadcast
  'television', -- a television broadcast
  'podcast', -- a podcast
  'other' -- other
)

-- Path: enums/enums.sql
