/** SEED DATA FOR ARTWORK MEDIUMS AND SUPPORTS
 * 1. MEDIUMS TABLE
 * 2. SUPPORTS TABLE
 */


-- * 1. MEDIUMS TABLE
INSERT INTO
    mediums (NAME, description)
VALUES
    ('charcoal', 'A form of dry art medium made of finely ground organic materials held together by gum or wax.'),
    ('graphite', 'A type of mineral used for drawing or sketching, usually in the form of a pencil.'),
    ('linocut', 'A printmaking technique where a design is cut into a linoleum surface and then inked and pressed onto paper.'),
    ('woodcut', 'A relief printing technique in which an image is carved into the surface of a block of wood.'),
    ('drypoint', 'An intaglio printmaking technique where an image is incised into a plate with a hard-pointed needle.'),
    ('lithograph', 'A printmaking technique where a design is drawn onto a stone or metal plate with a greasy crayon and then inked and pressed onto paper.'),
    ('etching', 'An intaglio printmaking technique where a metal plate is covered with a waxy ground and then scratched to expose the metal.'),
    ('aquatint', 'An intaglio printmaking technique where a metal plate is covered with a porous ground and then etched to produce areas of tone.'),
    ('mezzotint', 'An intaglio printmaking technique where a metal plate is roughened with a tool called a rocker so that it will print solid black.'),
    ('engraving', 'An intaglio printmaking technique where a metal plate is incised with a tool called a burin.'),
    ('monotype', 'A printmaking technique where a design is painted onto a smooth surface and then transferred to paper.'),
    ('monoprint', 'A printmaking technique where a design is painted onto a smooth surface and then transferred to paper.'),
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

-- * 2. SUPPORTS TABLE
INSERT INTO
    supports (NAME, description)
VALUES
    ('paper', 'A thin material made from fibers, commonly used for drawing, printing, and watercolor painting.'),
    ('canvas', 'A heavy-duty woven fabric used as a surface for painting, usually stretched over a frame.'),
    ('linen', 'A textile made from the fibers of the flax plant, used as a support for oil painting.'),
    ('panel', 'A flat, rigid surface, often made from wood, used as a support for painting or other art forms.'),
    ('plaster', 'A mixture of lime, water, and sand that hardens over time, often used for making sculptures or molds.'),
    ('hydrocal', 'A general-purpose gypsum cement offering higher strengths than typical plaster products'),
    ('ultracal', 'A very low expansion, gypsum cement used for producing master models and molds.'),
    ('bronze', 'A metal alloy used primarily for casting sculptures.'),
    ('glass', 'A hard, brittle substance made by fusing sand with soda and lime, used in various forms for artwork.'),
    ('wood', 'The hard fibrous material that forms the main substance of the trunk or branches of a tree or shrub.'),
    ('fired clay', 'Clay that has been fired in the kiln');