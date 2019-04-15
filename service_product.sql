CREATE TABLE service.product
(
    product_id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    product_type_id int(11) NOT NULL,
    is_available bit(1) NOT NULL,
    CONSTRAINT product_type_id FOREIGN KEY (product_type_id) REFERENCES product_type (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE UNIQUE INDEX id_UNIQUE ON service.product (product_id);
CREATE INDEX product_type_id ON service.product (product_type_id);
INSERT INTO service.product (product_id, product_type_id, is_available) VALUES (1, 2, true);
INSERT INTO service.product (product_id, product_type_id, is_available) VALUES (2, 2, true);
INSERT INTO service.product (product_id, product_type_id, is_available) VALUES (3, 2, true);
INSERT INTO service.product (product_id, product_type_id, is_available) VALUES (4, 2, true);
INSERT INTO service.product (product_id, product_type_id, is_available) VALUES (5, 2, true);
INSERT INTO service.product (product_id, product_type_id, is_available) VALUES (6, 2, true);
INSERT INTO service.product (product_id, product_type_id, is_available) VALUES (7, 2, true);
INSERT INTO service.product (product_id, product_type_id, is_available) VALUES (8, 2, true);
INSERT INTO service.product (product_id, product_type_id, is_available) VALUES (9, 2, true);
INSERT INTO service.product (product_id, product_type_id, is_available) VALUES (10, 2, true);
INSERT INTO service.product (product_id, product_type_id, is_available) VALUES (11, 2, true);
INSERT INTO service.product (product_id, product_type_id, is_available) VALUES (12, 1, true);
INSERT INTO service.product (product_id, product_type_id, is_available) VALUES (13, 1, true);
INSERT INTO service.product (product_id, product_type_id, is_available) VALUES (14, 1, true);
INSERT INTO service.product (product_id, product_type_id, is_available) VALUES (15, 1, true);
INSERT INTO service.product (product_id, product_type_id, is_available) VALUES (16, 1, true);
INSERT INTO service.product (product_id, product_type_id, is_available) VALUES (17, 1, true);
INSERT INTO service.product (product_id, product_type_id, is_available) VALUES (18, 1, true);
INSERT INTO service.product (product_id, product_type_id, is_available) VALUES (19, 1, true);
INSERT INTO service.product (product_id, product_type_id, is_available) VALUES (20, 1, true);
INSERT INTO service.product (product_id, product_type_id, is_available) VALUES (21, 1, true);
INSERT INTO service.product (product_id, product_type_id, is_available) VALUES (22, 1, true);
INSERT INTO service.product (product_id, product_type_id, is_available) VALUES (23, 1, true);
INSERT INTO service.product (product_id, product_type_id, is_available) VALUES (24, 1, true);
INSERT INTO service.product (product_id, product_type_id, is_available) VALUES (25, 1, true);
INSERT INTO service.product (product_id, product_type_id, is_available) VALUES (26, 1, true);
INSERT INTO service.product (product_id, product_type_id, is_available) VALUES (27, 1, true);
INSERT INTO service.product (product_id, product_type_id, is_available) VALUES (28, 1, true);
INSERT INTO service.product (product_id, product_type_id, is_available) VALUES (29, 1, true);
INSERT INTO service.product (product_id, product_type_id, is_available) VALUES (30, 1, true);