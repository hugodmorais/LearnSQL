Full General Syntax

CREATE TABLE table_name (
  column_name TYPE column_constraint
  table_constraint table_constraint
) INHERITS existing_table_name

CREATE TABLE players (
  player_id SERIAL PRIMARY KEY,
  age SMALLINT NOT NULL
);

INSERT INTO table (column1,column2,...)
SELECT column1,column2,...
FROM another_table
WHERE condition;

INSERT INTO account (username,password,email,created_on)
VALUES
('Jose','password','jose@mail.com',CURRENT_TIMESTAMP)

UPDATE table 
SET colum1 = value1,
    column2 = value2,...
WHERE 
  consition;

DELETE FROM table
WHERE row_id = 1

ALTER TABLE table_name action

CASE expression
  WHEN condition1 THEN result1
  WHEN condition2 THEN result2
  ELSE some_other_result
END






