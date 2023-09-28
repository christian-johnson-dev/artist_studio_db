-- 1. Seed data for 'people' table
INSERT INTO people (first_name, last_name) VALUES
('Josephine', 'Bijoux'), -- id 1
('Alice', 'Johnson'), -- id 2
('Rajesh', 'Patel'), --id 3
('Emily', 'Williams'), -- id 4
('Jin', 'Kim'), -- id 5
('Sarah', 'Davis'), -- id 6
('David', 'Miller'), -- id 7
('Sophia', 'Garcia'), -- id 8
('Haruki', 'Sanzi'), -- id 9
('Liam', 'Anderson'), -- id 10
('Olivia', 'Thomas'), -- id 11
('Ari', 'Tanaka'), -- id 12
('Ethan', 'Moore'), -- id 13
('Sunita', 'Sharma'), -- id 14
('Ava', 'Martin'), -- id 15
('Noah', 'Thompson'), -- id 16
('Lucas', 'Garcia'), -- id 17
('Mia', 'Fong'), -- id 18
('Bob', 'Smith'), -- id 19
('Michael', 'Brown'), -- id 20
('Grace', 'Rodriguez'), -- id 21
('William', 'Lewis'), -- id 22
('Chloe', 'Lee'), -- id 23
('Isabella', 'Pojani'), -- id 24
('Natalie', 'Hall'), -- id 25
('James', 'Wilson'), -- id 26
('Daniel', 'Allen'), -- id 27
('Lily', 'Young'), -- id 28
('Henry', 'Hernandez'), -- id 29
('Mason', 'Jackson'), -- id 30
('Mel', 'King'), -- id 31
('David', 'Oiuko'); -- id 32

--2. addresses table
INSERT INTO addresses (person_id, address_type, line_1, line_2, city, prov_state, postal_zip, country, notes) VALUES
(1, 'home', '1410 SW Taylor St.', 'Apt. 110', 'Portland', 'OR','97205', 'USA', NULL), -- Josephine Bijoux
(2, 'home', '123 Elm St', NULL, 'New York', 'NY', '10001', 'USA', NULL), -- Alice Johnson
(3, 'home', '456 Maple Ave', 'Apt 2', 'San Francisco', 'CA', '94105', 'USA', NULL), -- Rajesh Patel
(4, 'home', '789 Oak Dr', NULL, 'Chicago', 'IL', '60601', 'USA', NULL), -- Emily Williams
(5, 'home', '101 Birch Ln', 'Apt 101', 'Los Angeles', 'CA', '90001', 'USA', NULL), -- Jin Kim
(6, 'home', '202 Cedar Ct', NULL, 'Houston', 'TX', '77001', 'USA', NULL), -- Sarah Davis
(7, 'main', '303 Pine St', 'Apt 3', 'Philadelphia', 'PA', '19103', 'USA', NULL), -- David Miller
(8, 'main', '404 Spruce St', NULL, 'Phoenix', 'AZ', '85001', 'USA', NULL), -- Sophia Garcia
(9, 'office', '505 Redwood Rd', 'Apt 5', 'San Diego', 'CA', '92101', 'USA', NULL), -- Haruki Sanzi
(10, 'main', '606 Willow St', NULL, 'Dallas', 'TX', '75201', 'USA', NULL), -- Liam Anderson
(11, 'main', '707 Sequoia Way', NULL, 'San Jose', 'CA', '95101', 'USA', NULL), -- Olivia Thomas
(12, 'home', '1-2-3 Sakura St', NULL, 'Tokyo', 'Tokyo', '100-0001', 'Japan', NULL), -- Ari Tanaka
(13, 'main', '4-5-6 Azalea Ave', '2F', 'London', 'England', 'SW1A 1AA', 'UK', NULL), -- Ethan Moore
(14, 'home', '7-8-9 Lotus Ln', NULL, 'Mumbai', 'Maharashtra', '400001', 'India', NULL), -- Sunita Sharma
(15, 'home', '10-11-12 Orchid Dr', '3F', 'Paris', 'Île-de-France', '75001', 'France', NULL), -- Ava Martin
(16, 'main', '13-14-15 Tulip Tr', NULL, 'Berlin', 'Berlin', '10115', 'Germany', NULL), -- Noah Thompson
(17, 'main', '16-17-18 Rose Rd', '4F', 'Madrid', 'Madrid', '28001', 'Spain', NULL), -- Lucas Garcia
(18, 'main', '19-20-21 Lily Ln', NULL, 'Beijing', 'Beijing', '100000', 'China', NULL), -- Mia Fong
(19, 'main', '22-23-24 Daisy Dr', NULL, 'Rome', 'Lazio', '00100', 'Italy', NULL), -- Bob Smith
(20, 'home', '25-26-27 Sunflower St', '5F', 'Sydney', 'NSW', '2000', 'Australia', NULL), -- Michael Brown
(21, 'home', '28-29-30 Lavender Ln', NULL, 'Toronto', 'ON', 'M5H 2N1', 'Canada', NULL), -- Grace Rodriguez
(22, 'office', '31-32-33 Orchid Ave', NULL, 'New York', 'NY', '10001', 'USA', NULL), -- William Lewis
(23, 'office', '34-35-36 Jasmine St', NULL, 'San Francisco', 'CA', '94105', 'USA', NULL), -- Chloe Lee
(24, 'main', '37-38-39 Hyacinth Hl', NULL, 'Chicago', 'IL', '60601', 'USA', NULL), -- Isabella Pojani
(25, 'home', '40-41-42 Magnolia Ml', '6F', 'Los Angeles', 'CA', '90001', 'USA', NULL), -- Natalie Hall
(26, 'office', '43-44-45 Violet Vw', NULL, 'Houston', 'TX', '77001', 'USA', NULL), -- James Wilson
(27, 'main', '46-47-48 Crocus Cr', NULL, 'Philadelphia', 'PA', '19103', 'USA', NULL), -- Daniel Allen
(28, 'main', '49-50-51 Daffodil Dr', NULL, 'Phoenix', 'AZ', '85001', 'USA', NULL), -- Lily Young
(29, 'home', '52-53-54 Narcissus Nk', '7F', 'San Diego', 'CA', '92101', 'USA', NULL), -- Henry Hernandez
(30, 'home', '55-56-57 Tulip Tr', NULL, 'Dallas', 'TX', '75201', 'USA', NULL), -- Mason Jackson
(31, 'main', '58-59-60 Zinnia Zn', NULL, 'San Jose', 'CA', '95101', 'USA', NULL), -- Mel King
(32, 'home', '1822 SW Market St.', '#201', 'Portland', 'OR', '97205', 'USA', NULL); -- David Oiuko

--3. emails table 
INSERT INTO emails (person_id, email, email_type) VALUES
(1, 'josephine.bijoux@example.com', 'main'), -- Josephine Bijoux
(2, 'alice.johnson@example.com', 'main'), -- Alice Johnson
(3, 'rajesh.patel@workplace.com', 'work'), -- Rajesh Patel
(4, 'emily.williams@personal.org', 'personal'), -- Emily Williams
(5, 'jin.kim@other.net', 'other'), -- Jin Kim
(6, 'sarah.davis@example.com', 'main'), -- Sarah Davis
(7, 'david.miller@workplace.com', 'work'), -- David Miller
(8, 'sophia.garcia@personal.org', 'personal'), -- Sophia Garcia
(9, 'haruki.sanzi@other.net', 'other'), -- Haruki Sanzi
(10, 'liam.anderson@example.com', 'main'), -- Liam Anderson
(11, 'olivia.thomas@workplace.com', 'work'), -- Olivia Thomas
(12, 'ari.tanaka@personal.org', 'personal'), -- Ari Tanaka
(13, 'ethan.moore@other.net', 'other'), -- Ethan Moore
(14, 'sunita.sharma@example.com', 'main'), -- Sunita Sharma
(15, 'ava.martin@workplace.com', 'work'), -- Ava Martin
(16, 'noah.thompson@personal.org', 'personal'), -- Noah Thompson
(17, 'lucas.garcia@other.net', 'other'), -- Lucas Garcia
(18, 'mia.fong@example.com', 'main'), -- Mia Fong
(19, 'bob.smith@workplace.com', 'work'), -- Bob Smith
(20, 'michael.brown@personal.org', 'personal'), -- Michael Brown
(21, 'grace.rodriguez@other.net', 'other'), -- Grace Rodriguez
(22, 'william.lewis@example.com', 'main'), -- William Lewis
(23, 'chloe.lee@workplace.com', 'work'), -- Chloe Lee
(24, 'isabella.pojani@personal.org', 'personal'), -- Isabella Pojani
(25, 'natalie.hall@other.net', 'other'), -- Natalie Hall
(26, 'james.wilson@example.com', 'main'), -- James Wilson
(27, 'daniel.allen@workplace.com', 'work'), -- Daniel Allen
(28, 'lily.young@personal.org', 'personal'), -- Lily Young
(29, 'henry.hernandez@other.net', 'other'), -- Henry Hernandez
(30, 'mason.jackson@example.com', 'main'), -- Mason Jackson
(31, 'mia.king@workplace.com', 'work'), -- Mel King
(32, 'd.oiuko@other.net', 'other'); -- David Oiuko

-- 4. phone_numbers table 
INSERT INTO phone_numbers (person_id, phone_number, phone_type) VALUES
(1, '+1-503-555-0123', 'home'), -- Josephine Bijoux
(2, '+1-212-555-1234', 'main'), -- Alice Johnson
(3, '+1-415-555-5678', 'work'), -- Rajesh Patel
(4, '+1-312-555-9101', 'home'), -- Emily Williams
(5, '+1-213-555-1122', 'other'), -- Jin Kim
(6, '+1-713-555-1313', 'main'), -- Sarah Davis
(7, '+1-215-555-1414', 'work'), -- David Miller
(8, '+1-602-555-1515', 'home'), -- Sophia Garcia
(9, '+1-619-555-1616', 'other'), -- Haruki Sanzi
(10, '+1-214-555-1717', 'main'), -- Liam Anderson
(11, '+1-408-555-1818', 'work'), -- Olivia Thomas
(12, '+81-3-5555-1919', 'home'), -- Ari Tanaka
(13, '+44-20-5555-2020', 'other'), -- Ethan Moore
(14, '+91-22-5555-2121', 'main'), -- Sunita Sharma
(15, '+33-1-5555-2222', 'work'), -- Ava Martin
(16, '+49-30-5555-2323', 'home'), -- Noah Thompson
(17, '+34-91-5555-2424', 'other'), -- Lucas Garcia
(18, '+86-10-5555-2525', 'main'), -- Mia Fong
(19, '+39-06-5555-2626', 'work'), -- Bob Smith
(20, '+61-2-5555-2727', 'home'), -- Michael Brown
(21, '+1-416-555-2828', 'other'), -- Grace Rodriguez
(22, '+1-212-555-2929', 'main'), -- William Lewis
(23, '+1-415-555-3030', 'work'), -- Chloe Lee
(24, '+1-312-555-3131', 'home'), -- Isabella Pojani
(25, '+1-213-555-3232', 'other'), -- Natalie Hall
(26, '+1-713-555-3333', 'main'), -- James Wilson
(27, '+1-215-555-3434', 'work'), -- Daniel Allen
(28, '+1-602-555-3535', 'home'), -- Lily Young
(29, '+1-619-555-3636', 'other'), -- Henry Hernandez
(30, '+1-214-555-3737', 'main'), -- Mason Jackson
(31, '+1-408-555-3838', 'work'), -- Mel King
(32, '+1-503-555-3939', 'home'); -- David Oiuko

