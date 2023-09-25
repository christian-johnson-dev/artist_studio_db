--* A person from the people table can a model for an artwork from the artwork table.
CREATE TABLE artwork_models (
  model_id INT NOT NULL REFERENCES people (id),
  artwork_id INT NOT NULL REFERENCES artwork (id),
  PRIMARY KEY (model_id, artwork_id),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
