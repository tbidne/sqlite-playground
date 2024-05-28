-- Apparently these have to be on for foreign keys to work...sadface
pragma foreign_keys;
pragma foreign_keys = on;

CREATE TABLE category (
  id INT NOT NULL PRIMARY KEY, -- Cannot be null, must be unique (primary key)
  subject TEXT NOT NULL UNIQUE -- Cannot be null, must be unique
);

INSERT INTO
  category (id, subject)
VALUES
  (0, 'chemistry'),
  (1, 'literature'),
  (2, 'medicine'),
  (3, 'physics'),
  (4, 'peace');


CREATE TABLE nobel (
  winner TEXT NOT NULL,
  yr INT NOT NULL,
  subjectId INT,
  PRIMARY KEY (winner, yr, subjectId), -- It is usually a good idea to have a separate column for
                                       -- the primary key (i.e. another integer). This is just an
                                       -- an example.
  FOREIGN KEY(subjectId) REFERENCES category(id) -- This must match the category table
);

INSERT INTO
  nobel (winner, yr, subjectId)
VALUES
  ('Sir Winston Leonard Spencer Churchill', 1953, 1),
  ('Sir John Douglas Cockcroft', 1951, 3),
  ('Sir Edward Victor Appleton', 1947, 3),
  ('Sir Robert Robinson', 1947, 0),
  ('Sir Howard Walter Florey', 1945, 2),
  ('Sir Alexander Fleming', 1945, 2),
  ('Sir Henry Hallett Dale', 1936, 2),
  ('Sir Norman Angell (Ralph Lane)', 1933, 4),
  ('Sir Charles Scott Sherrington', 1932, 2),
  ('Sir Chandrasekhara Venkata Raman', 1930, 3),
  ('Sir Frederick Gowland Hopkins', 1929, 2);
