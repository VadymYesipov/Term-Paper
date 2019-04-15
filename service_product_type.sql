CREATE TABLE service.product_type
(
    id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    type varchar(45) NOT NULL
);
CREATE UNIQUE INDEX product_type_id_uindex ON service.product_type (id);
CREATE UNIQUE INDEX product_type_type_uindex ON service.product_type (type);
INSERT INTO service.product_type (id, type) VALUES (1, 'bicycle');
INSERT INTO service.product_type (id, type) VALUES (2, 'roller_skates');
INSERT INTO service.product_type (id, type) VALUES (3, 'skis');
INSERT INTO service.product_type (id, type) VALUES (4, 'snowboard');