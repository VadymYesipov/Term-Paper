CREATE TABLE service.brake_type
(
    id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    type varchar(45) NOT NULL
);
CREATE UNIQUE INDEX brake_type_id_uindex ON service.brake_type (id);
CREATE UNIQUE INDEX brake_type_type_uindex ON service.brake_type (type);
INSERT INTO service.brake_type (id, type) VALUES (8, 'Band brake');
INSERT INTO service.brake_type (id, type) VALUES (6, 'Coaster brakes');
INSERT INTO service.brake_type (id, type) VALUES (4, 'Disc brakes');
INSERT INTO service.brake_type (id, type) VALUES (7, 'Drag brakes');
INSERT INTO service.brake_type (id, type) VALUES (5, 'Drum brakes');
INSERT INTO service.brake_type (id, type) VALUES (2, 'Duck brake');
INSERT INTO service.brake_type (id, type) VALUES (3, 'Rim brakes');
INSERT INTO service.brake_type (id, type) VALUES (1, 'Spoon brakes');