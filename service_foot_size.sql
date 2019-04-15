CREATE TABLE service.foot_size
(
    id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    size double NOT NULL
);
CREATE UNIQUE INDEX foot_size_id_uindex ON service.foot_size (id);
CREATE UNIQUE INDEX foot_size_size_uindex ON service.foot_size (size);
INSERT INTO service.foot_size (id, size) VALUES (1, 36);
INSERT INTO service.foot_size (id, size) VALUES (2, 36.5);
INSERT INTO service.foot_size (id, size) VALUES (3, 37);
INSERT INTO service.foot_size (id, size) VALUES (4, 38);
INSERT INTO service.foot_size (id, size) VALUES (5, 38.5);
INSERT INTO service.foot_size (id, size) VALUES (6, 39);
INSERT INTO service.foot_size (id, size) VALUES (7, 40);
INSERT INTO service.foot_size (id, size) VALUES (8, 40.5);
INSERT INTO service.foot_size (id, size) VALUES (9, 41);
INSERT INTO service.foot_size (id, size) VALUES (10, 42);
INSERT INTO service.foot_size (id, size) VALUES (11, 42.5);
INSERT INTO service.foot_size (id, size) VALUES (12, 43);
INSERT INTO service.foot_size (id, size) VALUES (13, 44);
INSERT INTO service.foot_size (id, size) VALUES (14, 44.5);
INSERT INTO service.foot_size (id, size) VALUES (15, 45);
INSERT INTO service.foot_size (id, size) VALUES (16, 46);
INSERT INTO service.foot_size (id, size) VALUES (17, 46.5);
INSERT INTO service.foot_size (id, size) VALUES (18, 47);
INSERT INTO service.foot_size (id, size) VALUES (19, 48);