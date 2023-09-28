INSERT INTO publications_organizations_roles (role, description) 
  VALUES
  ('publisher', 'The organization that publishes the publication'), -- id 1
  ('broadcaster', 'The organization that broadcasts the publication'), -- id 2
  ('host', 'The organization venue that hosts a recorded event'), -- id 3
  ('sponsor', 'The organization that sponsors a recorded event'); -- id 4

INSERT INTO publications_people_roles (role, description) 
  VALUES
  ('author', 'The person who authored the publication'), -- id 1
  ('editor', 'The person who edited the publication'), -- id 2
  ('host', 'The person who interviewed the subject of the publication'), -- id 3
  ('participant', 'The person who was interviewed for the publication'), -- id 4
  ('moderator', 'Person moderating panel discussions, etc.'), -- id 5
  ('artist', 'Artist featured in the publication'); -- id 6


--* Publication 1
INSERT INTO publications(title, pub_date, pages, url, pub_type, description) VALUES
  ('Josephine Bijoux at Metro Modern', '2012-03-05', '11', NULL, 'article', 'a review of show at Metro Modern Gallery');

INSERT INTO publications_organizations (publication_id, organization_id, role_id) VALUES 
  (1, 22, 1); -- published by Art Squared

INSERT INTO publications_people (publication_id, people_id, role_id) VALUES 
  (1, 18, 1); -- author Mia Fong


--* Publication 2
INSERT INTO publications(title, pub_date, pages, url, pub_type, description) VALUES 
  ('All that glitters', '2012-03-07', '33-35, 38', NULL, 'article', 'an in depth review of the show at Metro Modern Gallery');

INSERT INTO publications_organizations (publication_id, organization_id, role_id) VALUES 
  (2, 23, 1); -- published by Albion Journal

INSERT INTO publications_people (publication_id, people_id, role_id) VALUES 
  (2, 21, 1); -- author Grace Rodriguez


--* Publication 3
INSERT INTO publications(title, pub_date, pages, url, pub_type, description) VALUES 
  ('Everything considered', '2012-04-22', NULL, 'http://youtube.com/2342iu-09', 'video', 'a panel discussion of Portland-based artists');

INSERT INTO publications_organizations (publication_id, organization_id, role_id) VALUES
  (3, 18, 4), -- sponsored by Blumenthal-Adler
  (3, 24, 3); -- hosted at Cider Press
INSERT INTO publications_people (publication_id, people_id, role_id) VALUES
  (3, 1, 4), -- participant Josephine Bijoux
  (3, 9, 4), -- participant Haruki Sanzi
  (3, 16, 4), -- participant Noah Thompson
  (3, 11, 5); -- moderator Olivia Thomas


--* Publication 4
INSERT INTO publications(title, pub_date, pages, url, pub_type, description) VALUES
  ('Josephine Bijoux: Recent Paintings', '2012-03-01', '1-36', NULL, 'book', 'a catalog for Josephine Bijoux show at Metro Modern');

INSERT INTO publications_organizations (publication_id, organization_id, role_id) VALUES
  (4, 8, 1); -- published by Metro Modern Gallery

INSERT INTO publications_people (publication_id, people_id, role_id) VALUES
  (4, 24, 1); -- author Isabella Pojani


--* Publication 5
INSERT INTO publications(title, pub_date, pages, url, pub_type, description) VALUES
  ('Formally Untrained','2012-04-15', NULL, 'http://formalyuntrained.com/episode203', 'audio', 'a podcast' );

INSERT INTO publications_organizations (publication_id, organization_id, role_id) VALUES
  (5, 25, 2); -- broadcast by Mindful Radio

INSERT INTO publications_people (publication_id, people_id, role_id) VALUES
  (5, 13, 3), -- host Ethan Moore
  (5, 1, 4); -- participant Josephine Bijoux


--* Publication 6
INSERT INTO publications(title, pub_date, pages, url, pub_type, description) VALUES
  ('Drawing: A New Approach', '2010-12-12', '35-37', NULL, 'book', 'A book on modern drawing techniques featuring contemporary artists');

INSERT INTO publications_organizations (publication_id, organization_id, role_id) VALUES
  (6, 21, 1); -- published by Monacelli Press

INSERT INTO publications_people (publication_id, people_id, role_id) VALUES
  (6, 18, 2), -- editor Mia Fong
  (6, 17, 1), -- author Lucas Garcia
  (6, 9, 6), -- artist Haruki Sanzi
  (6, 16, 6), -- artist Noah Thompson
  (6, 11, 6), -- artist Olivia Thomas
  (6, 1, 6); -- artist Josephine Bijoux


--* Publication 7
INSERT INTO publications(title, pub_date, pages, url, pub_type, description) VALUES
  ('Diverse Conclusions at Metro Modern', '2010-09-13', '13', NULL, 'article', 'a review of group show at Metro Modern Gallery');

INSERT INTO publications_organizations (publication_id, organization_id, role_id) VALUES
  (7, 23, 1); -- published by Albion Journal

INSERT INTO publications_people (publication_id, people_id, role_id) VALUES
  (7, 10, 1); -- author Liam Anderson


--* Publication 8
INSERT INTO publications(title, pub_date, pages, url, pub_type, description) VALUES
  ('Artlandia', '2009-01-01', '21-23, 49', NULL, 'book', 'a survey of Portland-based artists in the first decade of the 21-century');

INSERT INTO publications_organizations (publication_id, organization_id, role_id) VALUES
  (8, 21, 1); -- published by Monacelli Press

INSERT INTO publications_people (publication_id, people_id, role_id) VALUES
  (8, 24, 2), -- editor Isabella Pojani
  (8, 2, 1), -- author Alice Johnson
  (8, 3, 1), -- author Rajesh Patel
  (8, 24, 1), -- author Isabella Pojani
  (8, 9, 6), -- artist Haruki Sanzi
  (8, 16, 6), -- artist Noah Thompson
  (8, 11, 6), -- artist Olivia Thomas
  (8, 1, 6), -- artist Josephine Bijoux
  (8, 18, 6); -- artist Mia Fong


--* Publication 9
INSERT INTO publications(title, pub_date, pages, url, pub_type, description) VALUES
  ('David Oiuko: Recent Notions On Paper', '2013-02-11','3-7', NULL, 'book', 'interview of David Oiuko by Josephine Bijoux included in catalog for Oiuko exhibit');

INSERT INTO publications_organizations (publication_id, organization_id, role_id) VALUES
  (9, 18, 1); -- published by Blumenthal-Adler

INSERT INTO publications_people (publication_id, people_id, role_id) VALUES
  (9, 1, 1), -- host Josephine Bijoux
  (9, 32, 1); -- participant David Oiuko


--* Publication 10
INSERT INTO publications(title, pub_date, pages, url, pub_type, description) VALUES
  ('Josephine Bijoux: A Retrospective', '2014-07-12', '1-110', NULL, 'book', 'catalog for museum exhibition');

INSERT INTO publications_organizations (publication_id, organization_id, role_id) VALUES
  (10, 9, 1); -- published by National Heritage Museum

INSERT INTO publications_people (publication_id, people_id, role_id) VALUES
  (10, 24, 1), -- author Isabella Pojani
  (10, 22, 1), -- author William Lewis
  (10, 20, 1), -- author Michael Brown
  (10, 1, 1), -- author Josephine Bijoux
  (10, 11, 2); -- editor Olivia Thomas


--* Publication 11
INSERT INTO publications(title, pub_date, pages, url, pub_type, description) VALUES
  ('Pellman Winter Auction 2012', '2011-12-16', '62-64', NULL, 'book', 'catalog for auction');

INSERT INTO publications_organizations (publication_id, organization_id, role_id) VALUES
  (11, 26, 1); -- published by Pellman Auctions


--* Publications - Exhibitions join
INSERT INTO publications_exhibitions (publication_id, exhibition_id, type) VALUES
  (1,3,'review'),
  (2,1,'review'),
  (4,3, 'catalog'),
  (7,5,'review'),
  (10,7,'catalog'),
  (11,4,'catalog');

