DROP TABLE if exists owners;
DROP TABLE if exists cats;

CREATE TABLE cats (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  type VARCHAR(255),
  adopted VARCHAR(255)
);

CREATE TABLE owners (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  cat INT4 REFERENCES cats(id)
);
