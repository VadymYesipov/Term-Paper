CREATE TABLE service.bicycle
(
    id bigint(20) PRIMARY KEY NOT NULL,
    description varchar(255),
    is_available bit(1),
    price double NOT NULL,
    bicycle_category_id bigint(20),
    quality_id bigint(20),
    age_category_id bigint(20),
    brake_type_id bigint(20),
    speed_amount_id bigint(20),
    wheels_amount_id bigint(20),
    color_id bigint(20),
    image_id bigint(20),
    brand_id bigint(20),
    product_id bigint(20) NOT NULL
);
CREATE INDEX FKfr3wget8us3itj5ac0lt5nwhd ON service.bicycle (bicycle_category_id);
CREATE INDEX FK9fprc2qbjw3cf91gft7534iu ON service.bicycle (quality_id);
CREATE INDEX FKienaocidrmknaudt8ah9vds9v ON service.bicycle (age_category_id);
CREATE INDEX FK5pe4k4erdbu7qupksbtohnssl ON service.bicycle (brake_type_id);
CREATE INDEX FKf95qjr9d56al4d485qt7dlmcj ON service.bicycle (speed_amount_id);
CREATE INDEX FKc989jecapuwbouf89uh9qym52 ON service.bicycle (wheels_amount_id);
CREATE INDEX FKi4dxung7g25bkghljpe8g8xug ON service.bicycle (color_id);
CREATE INDEX FK5h0tdts54fmhu4bq0cuftosw0 ON service.bicycle (image_id);
CREATE INDEX FKgy3vigivf48vf5vouh1jbk95d ON service.bicycle (brand_id);
CREATE INDEX FKrtnafxsrt6r51flylmnm8w86x ON service.bicycle (product_id);
INSERT INTO service.bicycle (id, description, is_available, price, bicycle_category_id, quality_id, age_category_id, brake_type_id, speed_amount_id, wheels_amount_id, color_id, image_id, brand_id, product_id) VALUES (5, 'Good choice.', null, 200, 1, 2, 3, 1, 1, 1, 1, 65, 1, 0);
INSERT INTO service.bicycle (id, description, is_available, price, bicycle_category_id, quality_id, age_category_id, brake_type_id, speed_amount_id, wheels_amount_id, color_id, image_id, brand_id, product_id) VALUES (6, null, null, 250, 2, 2, 1, 2, 1, 3, 2, 66, 2, 0);
INSERT INTO service.bicycle (id, description, is_available, price, bicycle_category_id, quality_id, age_category_id, brake_type_id, speed_amount_id, wheels_amount_id, color_id, image_id, brand_id, product_id) VALUES (7, 'Super fast.', null, 260, 3, 2, 2, 3, 2, 2, 3, 67, 3, 0);
INSERT INTO service.bicycle (id, description, is_available, price, bicycle_category_id, quality_id, age_category_id, brake_type_id, speed_amount_id, wheels_amount_id, color_id, image_id, brand_id, product_id) VALUES (8, null, null, 100, 4, 3, 3, 4, 5, 4, 4, 68, 4, 0);
INSERT INTO service.bicycle (id, description, is_available, price, bicycle_category_id, quality_id, age_category_id, brake_type_id, speed_amount_id, wheels_amount_id, color_id, image_id, brand_id, product_id) VALUES (9, null, null, 130, 5, 3, 3, 5, 6, 4, 5, 69, 5, 0);
INSERT INTO service.bicycle (id, description, is_available, price, bicycle_category_id, quality_id, age_category_id, brake_type_id, speed_amount_id, wheels_amount_id, color_id, image_id, brand_id, product_id) VALUES (10, 'Convenient.', null, 157.6, 6, 3, 3, 6, 1, 1, 6, 70, 6, 0);
INSERT INTO service.bicycle (id, description, is_available, price, bicycle_category_id, quality_id, age_category_id, brake_type_id, speed_amount_id, wheels_amount_id, color_id, image_id, brand_id, product_id) VALUES (11, null, null, 123.7, 7, 3, 2, 7, 2, 2, 7, 71, 7, 0);
INSERT INTO service.bicycle (id, description, is_available, price, bicycle_category_id, quality_id, age_category_id, brake_type_id, speed_amount_id, wheels_amount_id, color_id, image_id, brand_id, product_id) VALUES (12, null, null, 60, 8, 4, 2, 8, 2, 2, 8, 72, 8, 0);
INSERT INTO service.bicycle (id, description, is_available, price, bicycle_category_id, quality_id, age_category_id, brake_type_id, speed_amount_id, wheels_amount_id, color_id, image_id, brand_id, product_id) VALUES (13, 'Recommend everyone.', null, 300, 1, 1, 3, 1, 7, 2, 9, 73, 9, 0);
INSERT INTO service.bicycle (id, description, is_available, price, bicycle_category_id, quality_id, age_category_id, brake_type_id, speed_amount_id, wheels_amount_id, color_id, image_id, brand_id, product_id) VALUES (14, null, null, 234, 2, 2, 3, 2, 8, 2, 10, 74, 10, 0);
INSERT INTO service.bicycle (id, description, is_available, price, bicycle_category_id, quality_id, age_category_id, brake_type_id, speed_amount_id, wheels_amount_id, color_id, image_id, brand_id, product_id) VALUES (15, null, null, 123, 3, 3, 2, 3, 3, 2, 1, 75, 11, 0);
INSERT INTO service.bicycle (id, description, is_available, price, bicycle_category_id, quality_id, age_category_id, brake_type_id, speed_amount_id, wheels_amount_id, color_id, image_id, brand_id, product_id) VALUES (16, null, null, 435, 4, 1, 1, 4, 1, 3, 2, 76, 12, 0);
INSERT INTO service.bicycle (id, description, is_available, price, bicycle_category_id, quality_id, age_category_id, brake_type_id, speed_amount_id, wheels_amount_id, color_id, image_id, brand_id, product_id) VALUES (17, null, null, 653, 5, 1, 1, 5, 1, 4, 3, 77, 13, 0);
INSERT INTO service.bicycle (id, description, is_available, price, bicycle_category_id, quality_id, age_category_id, brake_type_id, speed_amount_id, wheels_amount_id, color_id, image_id, brand_id, product_id) VALUES (18, 'I would be glad to ride one more time.', null, 333, 6, 1, 3, 6, 10, 2, 4, 78, 14, 0);
INSERT INTO service.bicycle (id, description, is_available, price, bicycle_category_id, quality_id, age_category_id, brake_type_id, speed_amount_id, wheels_amount_id, color_id, image_id, brand_id, product_id) VALUES (19, null, null, 200, 7, 2, 2, 7, 4, 2, 5, 79, 15, 0);
INSERT INTO service.bicycle (id, description, is_available, price, bicycle_category_id, quality_id, age_category_id, brake_type_id, speed_amount_id, wheels_amount_id, color_id, image_id, brand_id, product_id) VALUES (20, null, null, 123, 8, 3, 1, 8, 1, 2, 6, 80, 16, 0);
INSERT INTO service.bicycle (id, description, is_available, price, bicycle_category_id, quality_id, age_category_id, brake_type_id, speed_amount_id, wheels_amount_id, color_id, image_id, brand_id, product_id) VALUES (21, null, null, 99.5, 1, 4, 3, 1, 11, 2, 7, 81, 17, 0);
INSERT INTO service.bicycle (id, description, is_available, price, bicycle_category_id, quality_id, age_category_id, brake_type_id, speed_amount_id, wheels_amount_id, color_id, image_id, brand_id, product_id) VALUES (22, 'Thanks, bike was cool :)', null, 120, 2, 3, 3, 2, 12, 2, 8, 82, 18, 0);
INSERT INTO service.bicycle (id, description, is_available, price, bicycle_category_id, quality_id, age_category_id, brake_type_id, speed_amount_id, wheels_amount_id, color_id, image_id, brand_id, product_id) VALUES (23, null, null, 290, 3, 2, 2, 3, 5, 2, 9, 83, 19, 0);