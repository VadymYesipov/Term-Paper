CREATE TABLE service.role
(
    id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    role_name varchar(45) NOT NULL
);
CREATE UNIQUE INDEX role_id_uindex ON service.role (id);
CREATE UNIQUE INDEX role_role_name_uindex ON service.role (role_name);
INSERT INTO service.role (id, role_name) VALUES (1, 'admin');
INSERT INTO service.role (id, role_name) VALUES (2, 'customer');
INSERT INTO service.role (id, role_name) VALUES (3, 'manager');