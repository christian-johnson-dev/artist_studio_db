-- Seeding the people_organizations table
INSERT INTO people_organizations (people_id, organization_id, role) VALUES
-- 18 records in total

-- People associated with one organization
(1, 1, 'Director'),
(2, 2, 'Docent'),
(3, 3, 'Volunteer'),
(4, 4, 'Art Historian'),
(5, 5, 'Gallery Assistant'),
(6, 6, 'Exhibiting Artist'),
(7, 7, 'Registrar'),
(8, 8, 'Curator'),
(9, 9, 'Art Collector'),
(10, 10, 'Volunteer'),
(11, 11, 'Gallery Assistant'),
(12, 12, 'Exhibiting Artist'),
(13, 13, 'Conservator'),
(14, 14, 'Curator'),

-- People associated with multiple organizations
(1, 5, 'Board Member'),
(2, 6, 'Board Member'),
(3, 7, 'Board Member'),
(9, 2, 'Board Member'),
(1, 7, 'Advisory Council');
