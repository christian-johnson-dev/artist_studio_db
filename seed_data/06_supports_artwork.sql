------------------------ MEDIUMS -------------------------
INSERT INTO mediums (name, description) VALUES
('charcoal', 'A form of dry art medium made of finely ground organic materials held together by gum or wax.'),
('graphite', 'A type of mineral used for drawing or sketching, usually in the form of a pencil.'),
('linocut', 'A printmaking technique where a design is cut into a linoleum surface and then inked and pressed onto paper.'),
('woodcut', 'A relief printing technique in which an image is carved into the surface of a block of wood.'),
('drypoint', 'An intaglio printmaking technique where an image is incised into a plate with a hard-pointed needle.'),
('bronze', 'A metal alloy used primarily for casting sculptures.'),
('plaster', 'A mixture of lime, water, and sand that hardens over time, often used for making sculptures or molds.'),
('watercolor', 'A painting method using pigments suspended in a water-based solution.'),
('oil', 'A medium where pigments are mixed with an oil, often linseed, to create a slow-drying paint.'),
('acrylic', 'A fast-drying paint made of pigment suspended in acrylic polymer emulsion.'),
('pastel', 'An art medium in the form of a stick, consisting of pure pigment and a binder.'),
('ink', 'A liquid or paste that contains pigments and is used to color a surface to produce an image, text, or design.'),
('tempera', 'A painting medium made by mixing pigment with a water-soluble binder, such as egg yolk.'),
('gouache', 'A method of painting using opaque watercolors mixed with a preparation of gum.'),
('enamel', 'A decorative coating, often colored, applied by fusion to a metal, glass or ceramic surface.'),
('resin', 'A sticky organic substance that is often used in varnishes and adhesives, also can be used in casting.'),
('digital', 'Artwork created or modified using digital technology, often using software like Photoshop or Illustrator.'),
('ceramic', 'Artwork made from clay that has been shaped and then fired.'),
('glass', 'A hard, brittle substance made by fusing sand with soda and lime, used in various forms for artwork.'),
('flashe', 'A vinyl based paint with a matte sheen'),
('silver leaf', 'A thin foil applied to a surface in delicate sheets'),
('colored pencil', 'A pencil made of a narrow, pigmented core.  Pigments can be water soluble or oil based');

------------------------- SUPPORTS -------------------------
INSERT INTO supports (name, description) VALUES
('paper', 'A thin material made from fibers, commonly used for drawing, printing, and watercolor painting.'),
('canvas', 'A heavy-duty woven fabric used as a surface for painting, usually stretched over a frame.'),
('linen', 'A textile made from the fibers of the flax plant, used as a support for oil painting.'),
('panel', 'A flat, rigid surface, often made from wood, used as a support for painting or other art forms.');

------------------------- SUPPORT ARTWORK JOINS -------------------------
-- Associating all drawings in the 'artwork' table with the paper support
INSERT INTO artwork_support (artwork_id, support_id)
SELECT a.id, s.id
FROM artwork AS a, supports AS s
WHERE a.category = 'drawing' 
  AND s.name = 'paper';

-- Associating select paintings in the 'artwork' table with the canvas support
INSERT INTO artwork_support (artwork_id, support_id)
SELECT a.id, s.id
FROM artwork AS a, supports AS s
WHERE a.id IN (3, 12, 21, 27, 41, 45) 
  AND s.name = 'canvas';

-- Associating remaining paintings in the 'artwork table with the linen support
INSERT INTO artwork_support (artwork_id, support_id)
SELECT a.id, s.id
FROM artwork AS a, supports AS s
WHERE a.category = 'painting' 
  AND s.name = 'linen'
  AND a.id NOT IN (3, 12, 21, 27, 41, 45);


------------------------- MEDIUM ARTWORK JOINS -------------------------
-- Associating all drawings in the 'artwork' table with the charcoal medium
INSERT INTO artwork_medium (artwork_id, medium_id, is_primary) 
SELECT a.id, m.id, TRUE
FROM artwork AS a, mediums AS m
WHERE a.category = 'drawing' 
  AND m.name = 'charcoal';

-- Associating select paintings in the 'artwork' table with the acrylic medium
INSERT INTO artwork_medium (artwork_id, medium_id, is_primary)
SELECT a.id, m.id, TRUE
FROM artwork AS a, mediums AS m
WHERE a.id IN (3, 12, 21, 27, 41, 45)
  AND m.name = 'acrylic';

-- Associating some of the above selected paintings in the 'artwork' table with the colored pencil medium
INSERT INTO artwork_medium (artwork_id, medium_id)
SELECT a.id, m.id
FROM artwork AS a, mediums AS m
WHERE a.id IN (3, 12, 21, 27)
  AND m.name = 'colored pencil';

-- Associating remaining paintings in the 'artwork' table with the oil medium
INSERT INTO artwork_medium (artwork_id, medium_id, is_primary)
SELECT a.id, m.id, TRUE
FROM artwork AS a, mediums AS m
WHERE 
  a.category = 'painting'
  AND a.id NOT IN (3, 12, 21, 27, 41, 45)
  AND m.name = 'oil';