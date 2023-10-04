-- * SEED DATA FOR PEOPLE to ORGANIZATIONS JOIN TABLE

INSERT INTO
    people_organizations (people_id, org_location_id, ROLE)
VALUES
    -- People associated with one organization
    (20, 1, 'Director'),
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
    (15, 15, 'Art Collector'),
    (16, 16, 'Director'),
    (17, 17, 'Gallery Assistant'),
    (18, 18, 'Gallery Director'),
    (19, 19, 'Gallery Intern'),
    -- People associated with multiple organizations
    (20, 5, 'Board Member'),
    (2, 6, 'Board Member'),
    (3, 7, 'Board Member'),
    (9, 2, 'Board Member'),
    (20, 7, 'Advisory Council'),
    (9, 17, 'Director');