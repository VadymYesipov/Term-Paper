CREATE TABLE service.wheels_amount
(
    id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    amount int(11) NOT NULL
);
CREATE UNIQUE INDEX wheels_amount_id_uindex ON service.wheels_amount (id);
CREATE UNIQUE INDEX wheels_amount_amount_uindex ON service.wheels_amount (amount);
INSERT INTO service.wheels_amount (id, amount) VALUES (1, 1);
INSERT INTO service.wheels_amount (id, amount) VALUES (2, 2);
INSERT INTO service.wheels_amount (id, amount) VALUES (3, 3);
INSERT INTO service.wheels_amount (id, amount) VALUES (4, 4);