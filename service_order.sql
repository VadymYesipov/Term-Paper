CREATE TABLE service.`order`
(
    id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    product_id int(11) NOT NULL,
    user_id int(11) NOT NULL,
    start_date datetime NOT NULL,
    end_date datetime NOT NULL,
    price double NOT NULL,
    CONSTRAINT product_id_fk FOREIGN KEY (product_id) REFERENCES product (product_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT person_id_fk FOREIGN KEY (user_id) REFERENCES user (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE UNIQUE INDEX id_UNIQUE ON service.`order` (id);
CREATE INDEX product_id_fk_idx ON service.`order` (product_id);
CREATE INDEX person_id_fk_idx ON service.`order` (user_id);