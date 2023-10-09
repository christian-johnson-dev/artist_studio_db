/** SEED DATA FOR EDITIONED SCULPTURE
 * Makes use of custom functions `new_artwork` and `create_edition_records`
 * 1. ARTWORK TABLE
 * 2. EDITION_META TABLE
 * 3. EDITION TABLE
 */

--* 1. ARTWORK TABLE
-- Sculpture 1
SELECT new_artwork (
  p_category := 'sculpture',
  p_completion_date := '2010-11-01',
  p_support_names := '{plaster}',
  p_date_circa := FALSE,
  p_title := 'Torso 1',
  p_series_id := NULL,
  p_height_in := 24.125,
  p_width_in := 10.5,
  p_depth_in := 8.625,
  p_weight_lbs := 6,
  p_pieces_number := 1,
  p_signature := 'signed',
  p_condition := 'excellent',
  p_medium_names := '{}',
  p_movement_date := NULL
);  

-- Sculpture 2
SELECT new_artwork (
  p_category := 'sculpture',
  p_completion_date := '2010-11-15',
  p_support_names := '{plaster}',
  p_date_circa := FALSE,
  p_title := 'Torso 2',
  p_series_id := NULL,
  p_height_in := 15.5,
  p_width_in := 7,
  p_depth_in := 5.625,
  p_weight_lbs := 4,
  p_pieces_number := 1,
  p_signature := 'signed',
  p_condition := 'excellent',
  p_medium_names := '{}',
  p_movement_date := NULL
);

-- Sculpture 3
SELECT new_artwork (
  p_category := 'sculpture',
  p_completion_date := '2011-01-12',
  p_support_names := '{plaster}',
  p_date_circa := FALSE,
  p_title := 'Torso 3',
  p_series_id := NULL,
  p_height_in := 26,
  p_width_in := 11,
  p_depth_in := 8.5,
  p_weight_lbs := 7.25,
  p_pieces_number := 1,
  p_signature := 'signed',
  p_condition := 'excellent',
  p_medium_names := '{}',
  p_movement_date := NULL
);

--* 2. EDITION_META TABLE
INSERT INTO edition_meta (artwork_id, manufacturer_id, total_cost, total_ed, total_pp, total_hc, total_ap, total_tp, total_bat, total_st, is_completed, notes)
SELECT a.id, 1, 120.00, 3, 0, 0, 0, 0, 0, 0, TRUE, 'Cast by the artist in plaster.'
FROM artwork AS a
WHERE a.title LIKE 'Torso %';

--* 3. EDITION TABLE
DO $$
DECLARE 
  em_id INTEGER;
  comp_date DATE;
BEGIN
  -- Sculpture 1
  SELECT em.id, a.date_completed INTO em_id, comp_date
  FROM edition_meta AS em
  JOIN artwork AS a ON a.id = em.artwork_id
  WHERE a.title = 'Torso 1';

  PERFORM create_edition_records (em_id, comp_date, 'signed', TRUE, TRUE, FALSE, 'excellent');

  -- Sculpture 2
  SELECT em.id, a.date_completed INTO em_id, comp_date
  FROM edition_meta AS em
  JOIN artwork AS a ON a.id = em.artwork_id
  WHERE a.title = 'Torso 2';

  PERFORM create_edition_records (em_id, comp_date, 'signed', TRUE, TRUE, FALSE, 'excellent');

  -- Sculpture 3
  SELECT em.id, a.date_completed INTO em_id, comp_date
  FROM edition_meta AS em
  JOIN artwork AS a ON a.id = em.artwork_id
  WHERE a.title = 'Torso 3';

  PERFORM create_edition_records (em_id, comp_date, 'signed', TRUE, TRUE, FALSE, 'excellent');
END $$;


-- Sculpture 4
SELECT new_artwork (
  p_category := 'sculpture',
  p_completion_date := '2011-01-12',
  p_support_names := '{bronze}',
  p_date_circa := FALSE,
  p_title := 'Rajesh Patel',
  p_series_id := NULL,
  p_height_in := 18,
  p_width_in := 12.875,
  p_depth_in := 10.125,
  p_weight_lbs := 16.25,
  p_pieces_number := 1,
  p_signature := 'signed',
  p_condition := 'excellent',
  p_medium_names := '{}',
  p_movement_date := NULL
);


