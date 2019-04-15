CREATE TABLE service.fixation
(
    id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    fixation_type varchar(45) NOT NULL
);
CREATE UNIQUE INDEX fixation_id_uindex ON service.fixation (id);
CREATE UNIQUE INDEX fixation_fixation_type_uindex ON service.fixation (fixation_type);
INSERT INTO service.fixation (id, fixation_type) VALUES (4, 'autofixation');
INSERT INTO service.fixation (id, fixation_type) VALUES (1, 'lacing');
INSERT INTO service.fixation (id, fixation_type) VALUES (3, 'lacing and velcro');
INSERT INTO service.fixation (id, fixation_type) VALUES (2, 'velcro');