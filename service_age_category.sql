CREATE TABLE service.age_category
(
    id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    age varchar(45) NOT NULL
);
CREATE UNIQUE INDEX age_category_id_uindex ON service.age_category (id);
CREATE UNIQUE INDEX age_category_age_uindex ON service.age_category (age);
INSERT INTO service.age_category (id, age) VALUES (3, 'adult');
INSERT INTO service.age_category (id, age) VALUES (1, 'child');
INSERT INTO service.age_category (id, age) VALUES (2, 'teenage');