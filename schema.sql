-- driver_name, phone_no, id, license, status, 
-- Driver=> driver_name, phone_no, id, license, status,  
-- Customer=> customer_name, phone_no, 
-- Car=> driver_id, numberplate, color, model, no_of_seats
-- Trips => destination, pick_up location, price, customer_id, car_id, total_passengers

CREATE TABLE IF NOT EXISTS drivers (id INTEGER PRIMARY KEY, driver_name TEXT, phone_no INTEGER, status TEXT);
CREATE TABLE IF NOT EXISTS customers (id INTEGER PRIMARY KEY, customer_name TEXT, phone_no INTEGER);
CREATE TABLE IF NOT EXISTS cars (id INTEGER PRIMARY KEY, driver_id INTEGER, numberplate TEXT, color TEXT, model TEXT);
CREATE TABLE IF NOT EXISTS trips (id INTEGER PRIMARY KEY, customer_id INTEGER, car_id INTEGER,price INTEGER, destination TEXT);

INSERT INTO drivers (driver_name, phone_no, status) VALUES ("Driver1", 0798098091, "Active");
INSERT INTO drivers (driver_name, phone_no, status) VALUES ("Driver2", 0788098092, "inactive");
INSERT INTO drivers (driver_name, phone_no, status) VALUES ("Driver3", 0798098093, "Active");
INSERT INTO drivers (driver_name, phone_no, status) VALUES ("Driver4", 0798098094, "Active");
INSERT INTO customers (customer_name, phone_no) VALUES ("Customer1", 0798098001);
INSERT INTO customers (customer_name, phone_no) VALUES ("Customer2", 0798098002);
INSERT INTO customers (customer_name, phone_no) VALUES ("Customer3", 0798098003);
INSERT INTO cars (driver_id, numberplate, color, model) VALUES (1, "KDE 505R", "Black", "Demio");
INSERT INTO cars (driver_id, numberplate, color, model) VALUES (2, "KCD 300Z", "Red", "Honda Fit");
INSERT INTO cars (driver_id, numberplate, color, model) VALUES (3, "KBN 200F", "Grey", "Premio");
INSERT INTO trips (customer_id, car_id, price, destination) VALUES (1, 1, 800, "Ngong Rd");
INSERT INTO trips (customer_id, car_id, price, destination) VALUES (1, 2, 600, "Kinoo");
INSERT INTO trips (customer_id, car_id, price, destination) VALUES (2, 1, 1800, "Zambezi");

