CREATE TABLE service.color
(
    id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    color varchar(45) NOT NULL
);
CREATE UNIQUE INDEX color_id_uindex ON service.color (id);
INSERT INTO service.color (id, color) VALUES (1, 'red');
INSERT INTO service.color (id, color) VALUES (2, 'blue');
INSERT INTO service.color (id, color) VALUES (3, 'white');
INSERT INTO service.color (id, color) VALUES (4, 'black');
INSERT INTO service.color (id, color) VALUES (5, 'green');
INSERT INTO service.color (id, color) VALUES (6, 'grey');
INSERT INTO service.color (id, color) VALUES (7, 'pink');
INSERT INTO service.color (id, color) VALUES (8, 'yellow');
INSERT INTO service.color (id, color) VALUES (9, 'orange');
INSERT INTO service.color (id, color) VALUES (10, 'multicolored');