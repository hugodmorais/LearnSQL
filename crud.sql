Full General Syntax

CREATE TABLE table_name (
  column_name TYPE column_constraint
  table_constraint table_constraint
) INHERITS existing_table_name

CREATE TABLE players (
  player_id SERIAL PRIMARY KEY,
  age SMALLINT NOT NULL
);