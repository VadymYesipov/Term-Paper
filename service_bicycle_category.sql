CREATE TABLE service.bicycle_category
(
    id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    category varchar(45) NOT NULL
);
CREATE UNIQUE INDEX category_id_uindex ON service.bicycle_category (id);
CREATE UNIQUE INDEX category_category_uindex ON service.bicycle_category (category);
INSERT INTO service.bicycle_category (id, category) VALUES (5, 'BMX/Trick Bike');
INSERT INTO service.bicycle_category (id, category) VALUES (6, 'Commuting Bike');
INSERT INTO service.bicycle_category (id, category) VALUES (7, 'Cyclocross Bike');
INSERT INTO service.bicycle_category (id, category) VALUES (2, 'Hybrid/Comfort Bike');
INSERT INTO service.bicycle_category (id, category) VALUES (1, 'Mountain Bike');
INSERT INTO service.bicycle_category (id, category) VALUES (3, 'Road Bike');
INSERT INTO service.bicycle_category (id, category) VALUES (8, 'Track Bike');
INSERT INTO service.bicycle_category (id, category) VALUES (4, 'Triathlon/Time Trial Bike');