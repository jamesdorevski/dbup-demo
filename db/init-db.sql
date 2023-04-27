CREATE SCHEMA kfc;

CREATE TABLE kfc.city (
    id serial PRIMARY KEY,
    name varchar(255) NOT NULL,
    country varchar(255) NOT NULL,
    state varchar(255) NOT NULL
);

INSERT INTO kfc.city (name, country, state)
VALUES ('Melbourne', 'Australia', 'VIC');

INSERT INTO kfc.city (name, country, state)
VALUES ('Sydney', 'Australia', 'NSW');

CREATE TABLE kfc.store (
    id serial PRIMARY KEY,
    name varchar(255) NOT NULL,
    city_id int NOT NULL,
    FOREIGN KEY (city_id) REFERENCES kfc.city(id)
);

INSERT INTO kfc.store (name, city_id)
VALUES ('KFC Melbourne Central', 1);

INSERT INTO kfc.store (name, city_id)
VALUES ('KFC Westfield Sydney', 2);