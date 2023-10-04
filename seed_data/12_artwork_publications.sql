INSERT INTO publications_artworks (artwork_id, publication_id, page_number) 
  VALUES (
    (SELECT id from artwork WHERE title = 'Summer Figure 4b' LIMIT 1),
    (SELECT id from publications WHERE title = 'Josephine Bijoux at Metro Modern'),
    63
  );

INSERT INTO publications_artworks (artwork_id, publication_id, page_number)
  VALUES (
    (SELECT id from artwork WHERE date_completed = '2012-01-17' LIMIT 1),
    (SELECT id from publications WHERE title = 'All that glitters'),
    12
  );

INSERT INTO publications_artworks (artwork_id, publication_id, page_number)
  VALUES (
    (SELECT id from artwork WHERE title = 'Summer Figure 4b' LIMIT 1),
    (SELECT id from publications WHERE title = 'Josephine Bijoux: Recent Paintings'),
    12
  );

INSERT INTO publications_artworks (artwork_id, publication_id, page_number)
  VALUES (
    (SELECT id FROM artwork WHERE date_completed = '2006-02-16' LIMIT 1),
    (SELECT id FROM publications WHERE title = 'Drawing: A New Approach'),
    36
  );

INSERT INTO publications_artworks (artwork_id, publication_id, page_number)
  VALUES (
    (SELECT id FROM artwork WHERE title = 'Concertina 4' LIMIT 1),
    (SELECT id FROM publications WHERE title = 'Artlandia'),
    37
  );



