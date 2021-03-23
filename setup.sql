DROP TABLE IF EXISTS travellers;
CREATE TABLE travellers (
    travellerid INT,
    name VARCHAR
);
COPY travellers
FROM $str$/code/data/Travellers.csv$str$
DELIMITER ',' CSV HEADER;

DROP TABLE IF EXISTS destinations;
CREATE TABLE destinations (
    destinationid INT,
    destinations VARCHAR,
    traveller1 VARCHAR,
    traveller2 VARCHAR,
    traveller3 VARCHAR NULL
);
COPY destinations
FROM $str$/code/data/Destinations.csv$str$
DELIMITER ',' CSV HEADER;

DROP TABLE IF EXISTS trips;
CREATE TABLE trips (
    destinationid INT,
    traveller VARCHAR,
    destination VARCHAR

);
COPY trips
FROM $str$/code/data/Trips.csv$str$
DELIMITER ',' CSV HEADER;