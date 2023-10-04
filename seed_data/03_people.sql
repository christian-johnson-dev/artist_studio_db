/** SEED DATA FOR PEOPLE
 * 1. PEOPLE TABLE
 * 2. ADDRESSES TABLE
 * 3. EMAILS TABLE
 * 4. PHONE NUMBERS TABLE
 */
-- * 1. PEOPLE TABLE
INSERT INTO
    people (first_name, last_name)
VALUES
    ('Josephine', 'Bijoux'),  -- id 1,
    ('Alice', 'Johnson'),  -- id 2,
    ('Rajesh', 'Patel'),  -- id 3,
    ('Emily', 'Williams'),  -- id 4,
    ('Jin', 'Kim'),  -- id 5,
    ('Sarah', 'Davis'),  -- id 6,
    ('David', 'Miller'),  -- id 7,
    ('Sophia', 'Garcia'),  -- id 8,
    ('Haruki', 'Sanzi'),  -- id 9,
    ('Liam', 'Anderson'),  -- id 10,
    ('Olivia', 'Thomas'),  -- id 11,
    ('Ari', 'Tanaka'),  -- id 12,
    ('Ethan', 'Moore'),  -- id 13,
    ('Sunita', 'Sharma'),  -- id 14,
    ('Ava', 'Martin'),  -- id 15,
    ('Noah', 'Thompson'),  -- id 16,
    ('Lucas', 'Garcia'),  -- id 17,
    ('Mia', 'Fong'),  -- id 18,
    ('Bob', 'Smith'),  -- id 19,
    ('Michael', 'Brown'),  -- id 20,
    ('Grace', 'Rodriguez'),  -- id 21,
    ('William', 'Lewis'),  -- id 22,
    ('Chloe', 'Lee'),  -- id 23,
    ('Isabella', 'Pojani'),  -- id 24,
    ('Natalie', 'Hall'),  -- id 25,
    ('James', 'Wilson'),  -- id 26,
    ('Daniel', 'Allen'),  -- id 27,
    ('Lily', 'Young'),  -- id 28,
    ('Henry', 'Hernandez'),  -- id 29,
    ('Mason', 'Jackson'),  -- id 30,
    ('Mel', 'King'),  -- id 31,
    ('David', 'Oiuko');  -- id 32


--* 2. ADDRESSES TABLE
INSERT INTO
    addresses (person_id, address_type, line_1, line_2, city, prov_state, postal_zip, country, notes)
VALUES
    -- Josephine Bijoux
    (1, 'home', '1410 SW Taylor St.', 'Apt. 110', 'Portland', 'OR', '97205', 'USA', NULL),
    -- Alice Johnson
    (2, 'home', '123 Elm St', NULL, 'New York', 'NY', '10001', 'USA', NULL),
    -- Rajesh Patel
    (3, 'home', '456 Maple Ave', 'Apt 2', 'San Francisco', 'CA', '94105', 'USA', NULL),
    -- Emily Williams
    (4, 'home', '789 Oak Dr', NULL, 'Chicago', 'IL', '60601', 'USA', NULL),
    -- Jin Kim
    (5, 'home', '101 Birch Ln', 'Apt 101', 'Los Angeles', 'CA', '90001', 'USA', NULL),
    -- Sarah Davis
    (6, 'home', '202 Cedar Ct', NULL, 'Houston', 'TX', '77001', 'USA', NULL),
    -- David Miller
    (7, 'main', '303 Pine St', 'Apt 3', 'Philadelphia', 'PA', '19103', 'USA', NULL),
    -- Sophia Garcia
    (8, 'main', '404 Spruce St', NULL, 'Phoenix', 'AZ', '85001', 'USA', NULL),
    -- Haruki Sanzi
    (9, 'office', '505 Redwood Rd', 'Apt 5', 'San Diego', 'CA', '92101', 'USA', NULL),
    -- Liam Anderson
    (10, 'main', '606 Willow St', NULL, 'Dallas', 'TX', '75201', 'USA', NULL),
    -- Olivia Thomas
    (11, 'main', '707 Sequoia Way', NULL, 'San Jose', 'CA', '95101', 'USA', NULL),
    -- Ari Tanaka
    (12, 'home', '1-2-3 Sakura St', NULL, 'Tokyo', 'Tokyo', '100-0001', 'Japan', NULL),
    -- Ethan Moore
    (13, 'main', '4-5-6 Azalea Ave', '2F', 'London', 'England', 'SW1A 1AA', 'UK', NULL),
    -- Sunita Sharma
    (14, 'home', '7-8-9 Lotus Ln', NULL, 'Mumbai', 'Maharashtra', '400001', 'India', NULL),
    -- Ava Martin
    (15, 'home', '10-11-12 Orchid Dr', '3F', 'Paris', 'Île-de-France', '75001', 'France', NULL),
    -- Noah Thompson
    (16, 'main', '13-14-15 Tulip Tr', NULL, 'Berlin', 'Berlin', '10115', 'Germany', NULL),
    -- Lucas Garcia
    (17, 'main', '16-17-18 Rose Rd', '4F', 'Madrid', 'Madrid', '28001', 'Spain', NULL),
    -- Mia Fong
    (18, 'main', '19-20-21 Lily Ln', NULL, 'Beijing', 'Beijing', '100000', 'China', NULL),
    -- Bob Smith
    (19, 'main', '22-23-24 Daisy Dr', NULL, 'Rome', 'Lazio', '00100', 'Italy', NULL),
    -- Michael Brown
    (20, 'home', '25-26-27 Sunflower St', '5F', 'Sydney', 'NSW', '2000', 'Australia', NULL),
    -- Grace Rodriguez
    (21, 'home', '28-29-30 Lavender Ln', NULL, 'Toronto', 'ON', 'M5H 2N1', 'Canada', NULL),
    -- William Lewis
    (22, 'office', '31-32-33 Orchid Ave', NULL, 'New York', 'NY', '10001', 'USA', NULL),
    -- Chloe Lee
    (23, 'office', '34-35-36 Jasmine St', NULL, 'San Francisco', 'CA', '94105', 'USA', NULL),
    -- Isabella Pojani
    (24, 'main', '37-38-39 Hyacinth Hl', NULL, 'Chicago', 'IL', '60601', 'USA', NULL),
    -- Natalie Hall
    (25, 'home', '40-41-42 Magnolia Ml', '6F', 'Los Angeles', 'CA', '90001', 'USA', NULL),
    -- James Wilson
    (26, 'office', '43-44-45 Violet Vw', NULL, 'Houston', 'TX', '77001', 'USA', NULL),
    -- Daniel Allen
    (27, 'main', '46-47-48 Crocus Cr', NULL, 'Philadelphia', 'PA', '19103', 'USA', NULL),
    -- Lily Young
    (28, 'main', '49-50-51 Daffodil Dr', NULL, 'Phoenix', 'AZ', '85001', 'USA', NULL),
    -- Henry Hernandez
    (29, 'home', '52-53-54 Narcissus Nk', '7F', 'San Diego', 'CA', '92101', 'USA', NULL),
    -- Mason Jackson
    (30, 'home', '55-56-57 Tulip Tr', NULL, 'Dallas', 'TX', '75201', 'USA', NULL),
    -- Mel King
    (31, 'main', '58-59-60 Zinnia Zn', NULL, 'San Jose', 'CA', '95101', 'USA', NULL),
    -- David Oiuko
    (32, 'home', '1822 SW Market St.', '#201', 'Portland', 'OR', '97205', 'USA', NULL);

-- * 3. EMAILS TABLE
INSERT INTO
    emails (person_id, email, email_type)
VALUES
    -- Josephine Bijoux
    (1, 'josephine.bijoux@example.com', 'main'),
    -- Alice Johnson
    (2, 'alice.johnson@example.com', 'main'),
    -- Rajesh Patel
    (3, 'rajesh.patel@workplace.com', 'work'),
    -- Emily Williams
    (4, 'emily.williams@personal.org', 'personal'),
    -- Jin Kim
    (5, 'jin.kim@other.net', 'other'),
    -- Sarah Davis
    (6, 'sarah.davis@example.com', 'main'),
    -- David Miller
    (7, 'david.miller@workplace.com', 'work'),
    -- Sophia Garcia
    (8, 'sophia.garcia@personal.org', 'personal'),
    -- Haruki Sanzi
    (9, 'haruki.sanzi@other.net', 'other'),
    -- Liam Anderson
    (10, 'liam.anderson@example.com', 'main'),
    -- Olivia Thomas
    (11, 'olivia.thomas@workplace.com', 'work'),
    -- Ari Tanaka
    (12, 'ari.tanaka@personal.org', 'personal'),
    -- Ethan Moore
    (13, 'ethan.moore@other.net', 'other'),
    -- Sunita Sharma
    (14, 'sunita.sharma@example.com', 'main'),
    -- Ava Martin
    (15, 'ava.martin@workplace.com', 'work'),
    -- Noah Thompson
    (16, 'noah.thompson@personal.org', 'personal'),
    -- Lucas Garcia
    (17, 'lucas.garcia@other.net', 'other'),
    -- Mia Fong
    (18, 'mia.fong@example.com', 'main'),
    -- Bob Smith
    (19, 'bob.smith@workplace.com', 'work'),
    -- Michael Brown
    (20, 'michael.brown@personal.org', 'personal'),
    -- Grace Rodriguez
    (21, 'grace.rodriguez@other.net', 'other'),
    -- William Lewis
    (22, 'william.lewis@example.com', 'main'),
    -- Chloe Lee
    (23, 'chloe.lee@workplace.com', 'work'),
    -- Isabella Pojani
    (24, 'isabella.pojani@personal.org', 'personal'),
    -- Natalie Hall
    (25, 'natalie.hall@other.net', 'other'),
    -- James Wilson
    (26, 'james.wilson@example.com', 'main'),
    -- Daniel Allen
    (27, 'daniel.allen@workplace.com', 'work'),
    -- Lily Young
    (28, 'lily.young@personal.org', 'personal'),
    -- Henry Hernandez
    (29, 'henry.hernandez@other.net', 'other'),
    -- Mason Jackson
    (30, 'mason.jackson@example.com', 'main'),
    -- Mel King
    (31, 'mia.king@workplace.com', 'work'),
    -- David Oiuko
    (32, 'd.oiuko@other.net', 'other');

-- 4. phone_numbers table 
INSERT INTO
    phone_numbers (person_id, phone_number, phone_type)
VALUES
    -- Josephine Bijoux
    (1, '+1-503-555-0123', 'home'),
    -- Alice Johnson
    (2, '+1-212-555-1234', 'main'),
    -- Rajesh Patel
    (3, '+1-415-555-5678', 'work'),
    -- Emily Williams
    (4, '+1-312-555-9101', 'home'),
    -- Jin Kim
    (5, '+1-213-555-1122', 'other'),
    -- Sarah Davis
    (6, '+1-713-555-1313', 'main'),
    -- David Miller
    (7, '+1-215-555-1414', 'work'),
    -- Sophia Garcia
    (8, '+1-602-555-1515', 'home'),
    -- Haruki Sanzi
    (9, '+1-619-555-1616', 'other'),
    -- Liam Anderson
    (10, '+1-214-555-1717', 'main'),
    -- Olivia Thomas
    (11, '+1-408-555-1818', 'work'),
    -- Ari Tanaka
    (12, '+81-3-5555-1919', 'home'),
    -- Ethan Moore
    (13, '+44-20-5555-2020', 'other'),
    -- Sunita Sharma
    (14, '+91-22-5555-2121', 'main'),
    -- Ava Martin
    (15, '+33-1-5555-2222', 'work'),
    -- Noah Thompson
    (16, '+49-30-5555-2323', 'home'),
    -- Lucas Garcia
    (17, '+34-91-5555-2424', 'other'),
    -- Mia Fong
    (18, '+86-10-5555-2525', 'main'),
    -- Bob Smith
    (19, '+39-06-5555-2626', 'work'),
    -- Michael Brown
    (20, '+61-2-5555-2727', 'home'),
    -- Grace Rodriguez
    (21, '+1-416-555-2828', 'other'),
    -- William Lewis
    (22, '+1-212-555-2929', 'main'),
    -- Chloe Lee
    (23, '+1-415-555-3030', 'work'),
    -- Isabella Pojani
    (24, '+1-312-555-3131', 'home'),
    -- Natalie Hall
    (25, '+1-213-555-3232', 'other'),
    -- James Wilson
    (26, '+1-713-555-3333', 'main'),
    -- Daniel Allen
    (27, '+1-215-555-3434', 'work'),
    -- Lily Young
    (28, '+1-602-555-3535', 'home'),
    -- Henry Hernandez
    (29, '+1-619-555-3636', 'other'),
    -- Mason Jackson
    (30, '+1-214-555-3737', 'main'),
    -- Mel King
    (31, '+1-408-555-3838', 'work'),
    -- David Oiuko
    (32, '+1-503-555-3939', 'home');