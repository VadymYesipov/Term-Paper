CREATE TABLE service.quality
(
    id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    quality varchar(45) NOT NULL
);
CREATE UNIQUE INDEX quality_id_uindex ON service.quality (id);
INSERT INTO service.quality (id, quality) VALUES (1, 'good');
INSERT INTO service.quality (id, quality) VALUES (2, 'used');
INSERT INTO service.quality (id, quality) VALUES (3, 'poor');
INSERT INTO service.quality (id, quality) VALUES (4, 'damaged');