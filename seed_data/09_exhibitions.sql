/** SEED DATA FOR EXHIBITIONS
 * 1. EXHIBITION_PEOPLE_ROLES TABLE
 * 2. Each exhibition uses a sequential combination of the following tables:
 *    EXHIBITIONS, EXHIBITIONS_ORGANIZATIONS, EXHIBITIONS_PEOPLE
 */



--*1. ========== EXHIBITION PEOPLE ROLES TABLE ==========
INSERT INTO exhibitions_people_roles( role, description ) VALUES 
  ('Artist', 'A participating artist'),
  ('Curator', 'A person who develops the exhibition theme and selects artists the exhibition.'),
  ('Juror', 'A person who selects the artists for the exhibition.');


--*2. ========== EXHIBITIONS / EXHIBITIONS_ORGANIZATIONS / EXHIBITIONS_PEOPLE TABLES ==========
--* EXHIBITION 1
INSERT INTO exhibitions (title, type, include_short_bib, include_full_bib) VALUES
  ('Road Rage', 'group', TRUE, TRUE);

INSERT INTO exhibitions_organizations (exhibition_id, org_location_id, opening_date, closing_date, is_primary) VALUES
  (1, 8, '2012-05-12', '2012-06-18', TRUE); -- Metro Modern Gallery

INSERT INTO exhibitions_people (exhibition_id, role_id, person_id) VALUES
  (1, 1, 1), -- artist Josephine Bijoux
  (1, 1, 32), -- artist David Oiuko
  (1, 1, 16), -- artist Noah Thompson
  (1, 1, 25), -- artist Natalie Hall
  (1, 1, 7), -- artist Jin Kim
  (1, 2, 12); -- curator Ari Tanaka


--* EXHIBITION 2
INSERT INTO exhibitions (title, type, include_short_bib, include_full_bib) VALUES
  ('Float On', 'group', TRUE, TRUE);
INSERT INTO exhibitions_organizations (exhibition_id, org_location_id, opening_date, closing_date, is_primary) VALUES
  (2, 8, '2012-03-10', '2012-4-25', TRUE); -- Metro Modern Gallery
INSERT INTO exhibitions_people (exhibition_id, role_id, person_id) VALUES
  (2, 1, 1), -- artist Josephine Bijoux
  (2, 1, 8), -- artist Sophia Garcia
  (2, 1, 15), -- artist Ava Martin
  (2, 1, 17 ), -- artist Lucas Garcia
  (2, 2, 18); -- curator Mia Fong


--* EXHIBITION 3
INSERT INTO exhibitions (title, type, include_short_bib, include_full_bib) VALUES
  ('Josephine Bijoux: Recent Paintings', 'solo', TRUE, TRUE);
INSERT INTO exhibitions_organizations (exhibition_id, org_location_id, opening_date, closing_date, is_primary) VALUES
  (3, 8, '2012-02-01', '2012-03-09', TRUE); -- Metro Modern Gallery
INSERT INTO exhibitions_people (exhibition_id, role_id, person_id) VALUES
  (3, 1, 1); -- artist Josephine Bijoux


--* EXHIBITION 4
INSERT INTO exhibitions (title, type, include_short_bib, include_full_bib) VALUES
  ('Jairus Clemmens Collection', 'auction', FALSE, TRUE);
INSERT INTO exhibitions_organizations (exhibition_id, org_location_id, opening_date, closing_date, is_primary)   VALUES
  (4, 30, '2012-01-01', '2012-01-01', TRUE); -- Pellman Auctions: Los Angeles


--* EXHIBITION 5
INSERT INTO exhibitions (title, type, include_short_bib, include_full_bib) VALUES
  ('Diverse Conclusions', 'group', TRUE, TRUE);
INSERT INTO exhibitions_organizations (exhibition_id, org_location_id, opening_date, closing_date, is_primary) VALUES
  (5, 8, '2010-09-01', '2010-10-01', TRUE); -- 
INSERT INTO exhibitions_people (exhibition_id, role_id, person_id) VALUES
  (5,1,1), -- artist Josephine Bijoux
  (5,1,13), -- artist Ethan Moore
  (5,1,6), --artist Sarah Davis
  (5,1,15), --artist Ava Martin
  (5,2,18); -- curator Mia Fong


--* EXHIBITION 6
INSERT INTO exhibitions (title, type, include_short_bib, include_full_bib) VALUES
  ('Portland Women''s Association Benefit', 'other', FALSE, FALSE);
INSERT INTO exhibitions_organizations (exhibition_id, org_location_id, opening_date, closing_date, is_primary) VALUES
  (6, 27, '2010-05-01', '2010-05-01', TRUE); -- Cider Press


--* EXHIBITION 7
INSERT INTO exhibitions (title, type, include_short_bib, include_full_bib) VALUES
  ('Josephine Bijoux: A Retrospective', 'solo', TRUE, TRUE);
INSERT INTO exhibitions_organizations (exhibition_id, org_location_id, opening_date, closing_date, is_primary) VALUES
  (7,9, '2014-03-01', '2014-04-17', TRUE), -- National Heritage Museum
  (7,15, '2014-05-01', '2014-06-04', FALSE), -- Contemporary Arts Museum
  (7,2, '2014-07-01', '2014-08-01', FALSE); -- City Central Museum


--* EXHIBITION 8
INSERT INTO exhibitions (title, type, include_short_bib, include_full_bib) VALUES
  ('Assisted Living', 'group', TRUE, TRUE);
INSERT INTO exhibitions_organizations (exhibition_id, org_location_id, opening_date, closing_date, is_primary) VALUES
  (8, 19, '2014-01-01', '2014-02-01', TRUE); -- Blumenthal Adler Gallery: Vancouver
INSERT INTO exhibitions_people (exhibition_id, role_id, person_id) VALUES
  (8,1,1), --artist Josephine Bijoux
  (8,1,6), -- artist Sarah Davis
  (8,1,15), -- artist Ava Martin
  (8,1,17), -- artist Lucas Garcia
  (8,1,18), -- artist Mia Fong
  (8,2,24); -- curator Isabella Pojani




