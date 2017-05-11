DROP TABLE if exists cats;
DROP TABLE if exists owners;


CREATE TABLE owners (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE cats (
  id SERIAL4 PRIMARY KEY,
  arrival_date DATE,
  name VARCHAR(255),
  type VARCHAR(255),
  adopted VARCHAR(255),
  picture VARCHAR(255),
  owner INT4 REFERENCES owners(id) ON DELETE CASCADE
);
