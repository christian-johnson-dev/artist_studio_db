------------------------------- Adding Twelve Easy Pieces -------------------------------
-- Add to artwork table

INSERT INTO artwork (catalog_number, title, category, date_completed, height_in, width_in, series_id)
VALUES
  ('2012.03.001', 'Number 1', 'printmaking', '2012-06-25', 16, 12, (SELECT id FROM series WHERE series.name = 'Twelve Easy Pieces')),
  ('2012.03.003', 'Number 3', 'printmaking', '2012-06-25', 16, 12, (SELECT id FROM series WHERE series.name = 'Twelve Easy Pieces')),
  ('2012.03.002', 'Number 2', 'printmaking', '2012-06-25', 16, 12, (SELECT id FROM series WHERE series.name = 'Twelve Easy Pieces')),
  ('2012.03.004', 'Number 4', 'printmaking', '2012-06-25', 16, 12, (SELECT id FROM series WHERE series.name = 'Twelve Easy Pieces')),
  ('2012.03.005', 'Number 5', 'printmaking', '2012-06-25', 16, 12, (SELECT id FROM series WHERE series.name = 'Twelve Easy Pieces')),
  ('2012.03.006', 'Number 6', 'printmaking', '2012-06-25', 16, 12, (SELECT id FROM series WHERE series.name = 'Twelve Easy Pieces')),
  ('2012.03.007', 'Number 7', 'printmaking', '2012-06-25', 16, 12, (SELECT id FROM series WHERE series.name = 'Twelve Easy Pieces')),
  ('2012.03.008', 'Number 8', 'printmaking', '2012-06-25', 16, 12, (SELECT id FROM series WHERE series.name = 'Twelve Easy Pieces')),
  ('2012.03.009', 'Number 9', 'printmaking', '2012-06-25', 16, 12, (SELECT id FROM series WHERE series.name = 'Twelve Easy Pieces')),
  ('2012.03.010', 'Number 10', 'printmaking', '2012-06-25', 16, 12, (SELECT id FROM series WHERE series.name = 'Twelve Easy Pieces')),
  ('2012.03.011', 'Number 11', 'printmaking', '2012-06-25', 16, 12, (SELECT id FROM series WHERE series.name = 'Twelve Easy Pieces')),
  ('2012.03.012', 'Number 12', 'printmaking', '2012-06-25', 16, 12, (SELECT id FROM series WHERE series.name = 'Twelve Easy Pieces'));

-- Add to artwork_support table
INSERT INTO artwork_support (artwork_id, support_id)
SELECT a.id, s.id
FROM artwork AS a, supports AS s
WHERE a.series_id = (SELECT id FROM series WHERE series.name = 'Twelve Easy Pieces')
  AND s.name = 'paper';

-- Add to artwork_medium table
INSERT INTO artwork_medium (artwork_id, medium_id, is_primary)
SELECT a.id, m.id, TRUE
FROM artwork AS a, mediums AS m
WHERE a.series_id = (SELECT id FROM series WHERE series.name = 'Twelve Easy Pieces')
  AND m.name = 'linocut';

-- Add to edition_meta table
INSERT INTO edition_meta (artwork_id, total_cost, total_ed, total_pp, total_hc, total_ap, total_tp, total_bat, total_st, is_completed, notes)
SELECT a.id, 40, 25, 0, 0, 5, 0, 0, 0, TRUE, 'Edition produced by artist, hand printed in studio.'
FROM artwork AS a
WHERE a.series_id = (SELECT id FROM series WHERE series.name = 'Twelve Easy Pieces');



