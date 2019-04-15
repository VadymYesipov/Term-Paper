CREATE TABLE service.speed_amount
(
    id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    amount int(11) NOT NULL
);
CREATE UNIQUE INDEX speed_amount_id_uindex ON service.speed_amount (id);
CREATE UNIQUE INDEX speed_amount_amount_uindex ON service.speed_amount (amount);
INSERT INTO service.speed_amount (id, amount) VALUES (1, 1);
INSERT INTO service.speed_amount (id, amount) VALUES (2, 2);
INSERT INTO service.speed_amount (id, amount) VALUES (3, 3);
INSERT INTO service.speed_amount (id, amount) VALUES (4, 4);
INSERT INTO service.speed_amount (id, amount) VALUES (5, 5);
INSERT INTO service.speed_amount (id, amount) VALUES (6, 6);
INSERT INTO service.speed_amount (id, amount) VALUES (7, 7);
INSERT INTO service.speed_amount (id, amount) VALUES (8, 8);
INSERT INTO service.speed_amount (id, amount) VALUES (9, 9);
INSERT INTO service.speed_amount (id, amount) VALUES (10, 10);
INSERT INTO service.speed_amount (id, amount) VALUES (11, 11);
INSERT INTO service.speed_amount (id, amount) VALUES (12, 12);