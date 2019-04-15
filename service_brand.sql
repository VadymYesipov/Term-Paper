CREATE TABLE service.brand
(
    id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    brand_name varchar(45) NOT NULL,
    model_name varchar(45) NOT NULL,
    product_type_id int(11) NOT NULL,
    CONSTRAINT product_type_fk FOREIGN KEY (product_type_id) REFERENCES product_type (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE UNIQUE INDEX id_UNIQUE ON service.brand (id);
CREATE INDEX product_type_fk ON service.brand (product_type_id);
INSERT INTO service.brand (id, brand_name, model_name, product_type_id) VALUES (1, 'Specialized', 'Namobi', 1);
INSERT INTO service.brand (id, brand_name, model_name, product_type_id) VALUES (2, 'Giant', 'Tami', 1);
INSERT INTO service.brand (id, brand_name, model_name, product_type_id) VALUES (3, 'Trek', 'Lago', 1);
INSERT INTO service.brand (id, brand_name, model_name, product_type_id) VALUES (4, 'Merida', 'Prairie', 1);
INSERT INTO service.brand (id, brand_name, model_name, product_type_id) VALUES (5, 'Scott', 'Backfire', 1);
INSERT INTO service.brand (id, brand_name, model_name, product_type_id) VALUES (6, 'Cube', 'Maxima', 1);
INSERT INTO service.brand (id, brand_name, model_name, product_type_id) VALUES (7, 'Cannondale', 'Ranger Magnum', 1);
INSERT INTO service.brand (id, brand_name, model_name, product_type_id) VALUES (8, 'GT', 'Tomahawk', 1);
INSERT INTO service.brand (id, brand_name, model_name, product_type_id) VALUES (9, 'Ghost', 'SE 1800 40', 1);
INSERT INTO service.brand (id, brand_name, model_name, product_type_id) VALUES (10, 'Norco', 'Tacana 1 XS', 1);
INSERT INTO service.brand (id, brand_name, model_name, product_type_id) VALUES (11, 'Author', 'Outset 26 21', 1);
INSERT INTO service.brand (id, brand_name, model_name, product_type_id) VALUES (12, 'Bianchi', 'STAR', 1);
INSERT INTO service.brand (id, brand_name, model_name, product_type_id) VALUES (13, 'Schwinn', 'Town&Country', 1);
INSERT INTO service.brand (id, brand_name, model_name, product_type_id) VALUES (14, 'Bergamont', 'Schwinn Sivica 7', 1);
INSERT INTO service.brand (id, brand_name, model_name, product_type_id) VALUES (15, 'PRIDE', 'Stella 6.1', 1);
INSERT INTO service.brand (id, brand_name, model_name, product_type_id) VALUES (16, 'Orbea', 'Occam TR M30', 1);
INSERT INTO service.brand (id, brand_name, model_name, product_type_id) VALUES (17, 'Kellys', '18 Spider 50', 1);
INSERT INTO service.brand (id, brand_name, model_name, product_type_id) VALUES (18, 'Spelli', 'SBT-FS02', 1);
INSERT INTO service.brand (id, brand_name, model_name, product_type_id) VALUES (19, 'Comanche', 'Paracoa', 1);
INSERT INTO service.brand (id, brand_name, model_name, product_type_id) VALUES (20, 'Ardis', 'MAXI', 1);
INSERT INTO service.brand (id, brand_name, model_name, product_type_id) VALUES (21, 'RollerBlade', 'Spitfire Cube G', 2);
INSERT INTO service.brand (id, brand_name, model_name, product_type_id) VALUES (22, 'K2', 'Marlee Pro', 2);
INSERT INTO service.brand (id, brand_name, model_name, product_type_id) VALUES (23, 'Fila', 'J-One Combo G 3 Set', 2);
INSERT INTO service.brand (id, brand_name, model_name, product_type_id) VALUES (24, 'Michelin', 'Phuzion 3 Girls II', 2);
INSERT INTO service.brand (id, brand_name, model_name, product_type_id) VALUES (25, 'Salomon', 'Galaxy Girls Softboot', 2);
INSERT INTO service.brand (id, brand_name, model_name, product_type_id) VALUES (26, 'Powerslide', 'Imperial SUV', 2);
INSERT INTO service.brand (id, brand_name, model_name, product_type_id) VALUES (27, 'Seba', 'FR-1', 2);
INSERT INTO service.brand (id, brand_name, model_name, product_type_id) VALUES (28, 'Roces', 'Orlando 3', 2);