--* This table logs damage to an artwork or editioned work
CREATE TABLE damage (
    -- * METADATA
    id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    artwork_id INT REFERENCES artwork (id),
    edition_id INT REFERENCES edition (id),
    damage TEXT, --a short description of the damage
    date_reported DATE NOT NULL,
    date_occurred DATE,
    is_restorable BOOLEAN,
    date_repaired DATE,
    estimated_cost NUMERIC(10, 2) CHECK (estimated_cost >= 0),
    actual_cost NUMERIC(10, 2) CHECK (actual_cost >= 0),
    notes TEXT,
    --* Check that either artwork_id or edition_id is not null and the other is null
    CONSTRAINT artwork_or_edition CHECK ((artwork_id IS NOT NULL AND edition_id IS NULL) OR (artwork_id IS NULL AND edition_id IS NOT NULL))
);

-- Path: tables/artworks/edition.sql

