CREATE TABLE IF NOT EXISTS drivers (
    id INTEGER PRIMARY KEY,
    driver_name TEXT,
    phone_no INTEGER,
    status TEXT
);

CREATE TABLE IF NOT EXISTS customers (
    id INTEGER PRIMARY KEY,
    customer_name TEXT,
    phone_no INTEGER
);

CREATE TABLE IF NOT EXISTS cars (
    id INTEGER PRIMARY KEY,
    driver_id INTEGER,
    number_plate TEXT,
    color TEXT,
    model TEXT
);

CREATE TABLE IF NOT EXISTS trips (
    id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    price INTEGER,
    destination TEXT
);

INSERT INTO drivers (driver_name, phone_no, status) VALUES ("Driver1", 0791091091, "Active");
INSERT INTO drivers (driver_name, phone_no, status) VALUES ("Driver2", 0792092092, "Inactive");
INSERT INTO drivers (driver_name, phone_no, status) VALUES ("Driver3", 0793093093, "Active");
INSERT INTO drivers (driver_name, phone_no, status) VALUES ("Driver4", 0794094094, "Inactive");

INSERT INTO customers (customer_name, phone_no) VALUES ("Customer1", 0711011011);
INSERT INTO customers (customer_name, phone_no) VALUES ("Customer2", 0712012012);
INSERT INTO customers (customer_name, phone_no) VALUES ("Customer3", 0713013013);

INSERT INTO cars (driver_id, number_plate, color, model) VALUES (1, "KDA 001A", "Black", "Mazda Demio");
INSERT INTO cars (driver_id, number_plate, color, model) VALUES (1, "KDB 001A", "White", "Toyota Vitz");
INSERT INTO cars (driver_id, number_plate, color, model) VALUES (1, "KDC 001A", "GHrey", "Nissan Note");

INSERT INTO trips (customer_id, price, destination) VALUES (1, 1500, "Kasarani");
INSERT INTO trips (customer_id, price, destination) VALUES (2, 800, "Parklands");
INSERT INTO trips (customer_id, price, destination) VALUES (1, 1700, "Utawala");