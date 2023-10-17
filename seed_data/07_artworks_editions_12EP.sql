/** SEED DATA FOR EDITIONED PRINTMAKING SERIES
 * Makes use of custom functions `new_artwork` and `create_edition_records`
 * 1. ARTWORK TABLE
 * 2. EDITION_META TABLE
 * 3. EDITION TABLE
 */

--* 1. ============ ARTWORK TABLE ============ *--
-- Number 1
SELECT new_artwork (
  p_category := 'printmaking',
  p_completion_date := '2012-06-25',
  p_support_names := '{paper}',
  p_date_circa := FALSE,
  p_title := 'Number 1',
  p_series_id := (SELECT id FROM series WHERE series.name = 'Twelve Easy Pieces'),
  p_height_in := 16,
  p_width_in := 12,
  p_depth_in := NULL,
  p_weight_lbs := NULL,
  p_pieces_number := 1,
  p_signature := 'signed',
  p_condition := 'excellent',
  p_medium_names := '{linocut}',
  p_movement_date := NULL
);

-- Number 2
SELECT new_artwork (
  p_category := 'printmaking',
  p_completion_date := '2012-06-26',
  p_support_names := '{paper}',
  p_date_circa := FALSE,
  p_title := 'Number 2',
  p_series_id := (SELECT id FROM series WHERE series.name = 'Twelve Easy Pieces'),
  p_height_in := 16,
  p_width_in := 12,
  p_depth_in := NULL,
  p_weight_lbs := NULL,
  p_pieces_number := 1,
  p_signature := 'signed',
  p_condition := 'excellent',
  p_medium_names := '{linocut}',
  p_movement_date := NULL
);

-- Number 3
SELECT new_artwork (
  p_category := 'printmaking',
  p_completion_date := '2012-06-25',
  p_support_names := '{paper}',
  p_date_circa := FALSE,
  p_title := 'Number 3',
  p_series_id := (SELECT id FROM series WHERE series.name = 'Twelve Easy Pieces'),
  p_height_in := 16,
  p_width_in := 12,
  p_depth_in := NULL,
  p_weight_lbs := NULL,
  p_pieces_number := 1,
  p_signature := 'signed',
  p_condition := 'excellent',
  p_medium_names := '{linocut}',
  p_movement_date := NULL
);

-- Number 4
SELECT new_artwork (
  p_category := 'printmaking',
  p_completion_date := '2012-06-26',
  p_support_names := '{paper}',
  p_date_circa := FALSE,
  p_title := 'Number 4',
  p_series_id := (SELECT id FROM series WHERE series.name = 'Twelve Easy Pieces'),
  p_height_in := 16,
  p_width_in := 12,
  p_depth_in := NULL,
  p_weight_lbs := NULL,
  p_pieces_number := 1,
  p_signature := 'signed',
  p_condition := 'excellent',
  p_medium_names := '{linocut}',
  p_movement_date := NULL
);

-- Number 5
SELECT new_artwork (
  p_category := 'printmaking',
  p_completion_date := '2012-06-27',
  p_support_names := '{paper}',
  p_date_circa := FALSE,
  p_title := 'Number 5',
  p_series_id := (SELECT id FROM series WHERE series.name = 'Twelve Easy Pieces'),
  p_height_in := 16,
  p_width_in := 12,
  p_depth_in := NULL,
  p_weight_lbs := NULL,
  p_pieces_number := 1,
  p_signature := 'signed',
  p_condition := 'excellent',
  p_medium_names := '{linocut}',
  p_movement_date := NULL
);

-- Number 6
SELECT new_artwork (
  p_category := 'printmaking',
  p_completion_date := '2012-06-27',
  p_support_names := '{paper}',
  p_date_circa := FALSE,
  p_title := 'Number 6',
  p_series_id := (SELECT id FROM series WHERE series.name = 'Twelve Easy Pieces'),
  p_height_in := 16,
  p_width_in := 12,
  p_depth_in := NULL,
  p_weight_lbs := NULL,
  p_pieces_number := 1,
  p_signature := 'signed',
  p_condition := 'excellent',
  p_medium_names := '{linocut}',
  p_movement_date := NULL
);

-- Number 7
SELECT new_artwork (
  p_category := 'printmaking',
  p_completion_date := '2012-06-28',
  p_support_names := '{paper}',
  p_date_circa := FALSE,
  p_title := 'Number 7',
  p_series_id := (SELECT id FROM series WHERE series.name = 'Twelve Easy Pieces'),
  p_height_in := 16,
  p_width_in := 12,
  p_depth_in := NULL,
  p_weight_lbs := NULL,
  p_pieces_number := 1,
  p_signature := 'signed',
  p_condition := 'excellent',
  p_medium_names := '{linocut}',
  p_movement_date := NULL
);

-- Number 8
SELECT new_artwork (
  p_category := 'printmaking',
  p_completion_date := '2012-06-28',
  p_support_names := '{paper}',
  p_date_circa := FALSE,
  p_title := 'Number 8',
  p_series_id := (SELECT id FROM series WHERE series.name = 'Twelve Easy Pieces'),
  p_height_in := 16,
  p_width_in := 12,
  p_depth_in := NULL,
  p_weight_lbs := NULL,
  p_pieces_number := 1,
  p_signature := 'signed',
  p_condition := 'excellent',
  p_medium_names := '{linocut}',
  p_movement_date := NULL
);

-- Number 9
SELECT new_artwork (
  p_category := 'printmaking',
  p_completion_date := '2012-06-28',
  p_support_names := '{paper}',
  p_date_circa := FALSE,
  p_title := 'Number 9',
  p_series_id := (SELECT id FROM series WHERE series.name = 'Twelve Easy Pieces'),
  p_height_in := 16,
  p_width_in := 12,
  p_depth_in := NULL,
  p_weight_lbs := NULL,
  p_pieces_number := 1,
  p_signature := 'signed',
  p_condition := 'excellent',
  p_medium_names := '{linocut}',
  p_movement_date := NULL
);

-- Number 10
SELECT new_artwork (
  p_category := 'printmaking',
  p_completion_date := '2012-06-29',
  p_support_names := '{paper}',
  p_date_circa := FALSE,
  p_title := 'Number 10',
  p_series_id := (SELECT id FROM series WHERE series.name = 'Twelve Easy Pieces'),
  p_height_in := 16,
  p_width_in := 12,
  p_depth_in := NULL,
  p_weight_lbs := NULL,
  p_pieces_number := 1,
  p_signature := 'signed',
  p_condition := 'excellent',
  p_medium_names := '{linocut}',
  p_movement_date := NULL
);

-- Number 11
SELECT new_artwork (
  p_category := 'printmaking',
  p_completion_date := '2012-06-29',
  p_support_names := '{paper}',
  p_date_circa := FALSE,
  p_title := 'Number 11',
  p_series_id := (SELECT id FROM series WHERE series.name = 'Twelve Easy Pieces'),
  p_height_in := 16,
  p_width_in := 12,
  p_depth_in := NULL,
  p_weight_lbs := NULL,
  p_pieces_number := 1,
  p_signature := 'signed',
  p_condition := 'excellent',
  p_medium_names := '{linocut}',
  p_movement_date := NULL
);

-- Number 12
SELECT new_artwork (
  p_category := 'printmaking',
  p_completion_date := '2012-06-30',
  p_support_names := '{paper}',
  p_date_circa := FALSE,
  p_title := 'Number 12',
  p_series_id := (SELECT id FROM series WHERE series.name = 'Twelve Easy Pieces'),
  p_height_in := 16,
  p_width_in := 12,
  p_depth_in := NULL,
  p_weight_lbs := NULL,
  p_pieces_number := 1,
  p_signature := 'signed',
  p_condition := 'excellent',
  p_medium_names := '{linocut}',
  p_movement_date := NULL
);

--* 2. ============ EDITION META TABLE ============ *--
-- Create records in edition_meta table for all newly created artworks in the 'Twelve Easy Pieces' series
INSERT INTO edition_meta (artwork_id, manufacturer_id, total_cost, total_ed, total_pp, total_hc, total_ap, total_tp, total_bat, total_st, is_completed, notes)
SELECT a.id, 1, 40, 25, 0, 0, 5, 0, 0, 0, TRUE, 'Edition produced by artist, hand printed in studio.'
FROM artwork AS a
WHERE a.series_id = (SELECT id FROM series WHERE series.name = 'Twelve Easy Pieces');

--* 3. ============ EDITION TABLE ============ *--
-- Add each to edition table
DO $$
DECLARE
  em_id INTEGER;
  comp_date DATE;
BEGIN
  --Number 1
  SELECT em.id, a.date_completed INTO em_id, comp_date
  FROM edition_meta AS em
  JOIN artwork AS a ON a.id = em.artwork_id
  WHERE a.title = 'Number 1';

  PERFORM create_edition_records (em_id, comp_date, 'signed', TRUE, TRUE, FALSE, 'excellent');

  --Number 2
  SELECT em.id, a.date_completed INTO em_id, comp_date
  FROM edition_meta AS em
  JOIN artwork AS a ON a.id = em.artwork_id
  WHERE a.title = 'Number 2';

  PERFORM create_edition_records (em_id, comp_date, 'signed', TRUE, TRUE, FALSE, 'excellent');

  --Number 3
  SELECT em.id, a.date_completed INTO em_id, comp_date
  FROM edition_meta AS em
  JOIN artwork AS a ON a.id = em.artwork_id
  WHERE a.title = 'Number 3';

  PERFORM create_edition_records (em_id, comp_date, 'signed', TRUE, TRUE, FALSE, 'excellent');
  
  --Number 4
  SELECT em.id, a.date_completed INTO em_id, comp_date
  FROM edition_meta AS em
  JOIN artwork AS a ON a.id = em.artwork_id
  WHERE a.title = 'Number 4';

  PERFORM create_edition_records (em_id, comp_date, 'signed', TRUE, TRUE, FALSE, 'excellent');
  
  --Number 5
  SELECT em.id, a.date_completed INTO em_id, comp_date
  FROM edition_meta AS em
  JOIN artwork AS a ON a.id = em.artwork_id
  WHERE a.title = 'Number 5';

  PERFORM create_edition_records (em_id, comp_date, 'signed', TRUE, TRUE, FALSE, 'excellent');

  --Number 6
  SELECT em.id, a.date_completed INTO em_id, comp_date
  FROM edition_meta AS em
  JOIN artwork AS a ON a.id = em.artwork_id
  WHERE a.title = 'Number 6';

  PERFORM create_edition_records (em_id, comp_date, 'signed', TRUE, TRUE, FALSE, 'excellent');

  --Number 7
  SELECT em.id, a.date_completed INTO em_id, comp_date
  FROM edition_meta AS em
  JOIN artwork AS a ON a.id = em.artwork_id
  WHERE a.title = 'Number 7';

  PERFORM create_edition_records (em_id, comp_date, 'signed', TRUE, TRUE, FALSE, 'excellent');

  --Number 8
  SELECT em.id, a.date_completed INTO em_id, comp_date
  FROM edition_meta AS em
  JOIN artwork AS a ON a.id = em.artwork_id
  WHERE a.title = 'Number 8';

  PERFORM create_edition_records (em_id, comp_date, 'signed', TRUE, TRUE, FALSE, 'excellent');

  --Number 9
  SELECT em.id, a.date_completed INTO em_id, comp_date
  FROM edition_meta AS em
  JOIN artwork AS a ON a.id = em.artwork_id
  WHERE a.title = 'Number 9';

  PERFORM create_edition_records (em_id, comp_date, 'signed', TRUE, TRUE, FALSE, 'excellent');

  --Number 10
  SELECT em.id, a.date_completed INTO em_id, comp_date
  FROM edition_meta AS em
  JOIN artwork AS a ON a.id = em.artwork_id
  WHERE a.title = 'Number 10';

  PERFORM create_edition_records (em_id, comp_date, 'signed', TRUE, TRUE, FALSE, 'excellent');

  --Number 11
  SELECT em.id, a.date_completed INTO em_id, comp_date
  FROM edition_meta AS em
  JOIN artwork AS a ON a.id = em.artwork_id
  WHERE a.title = 'Number 11';

  PERFORM create_edition_records (em_id, comp_date, 'signed', TRUE, TRUE, FALSE, 'excellent');

  --Number 12
  SELECT em.id, a.date_completed INTO em_id, comp_date
  FROM edition_meta AS em
  JOIN artwork AS a ON a.id = em.artwork_id
  WHERE a.title = 'Number 12';

  PERFORM create_edition_records (em_id, comp_date, 'signed', TRUE, TRUE, FALSE, 'excellent');
END $$;
