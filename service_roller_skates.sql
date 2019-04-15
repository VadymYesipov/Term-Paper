CREATE TABLE service.roller_skates
(
    id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    product_id int(11) NOT NULL,
    brand_id int(11) NOT NULL,
    fixation_id int(11) NOT NULL,
    foot_size_id int(11) NOT NULL,
    description varchar(45),
    price double NOT NULL,
    quality_id int(11) NOT NULL,
    image_id int(11) NOT NULL,
    color_id int(11) NOT NULL,
    CONSTRAINT product_id_fkey FOREIGN KEY (product_id) REFERENCES product (product_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT brand_id_fkey FOREIGN KEY (brand_id) REFERENCES brand (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fixation_fkey FOREIGN KEY (fixation_id) REFERENCES fixation (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT foot_size_fkey FOREIGN KEY (foot_size_id) REFERENCES foot_size (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT quality_id_fk FOREIGN KEY (quality_id) REFERENCES quality (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_image_id FOREIGN KEY (image_id) REFERENCES image (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT color_id_fk FOREIGN KEY (color_id) REFERENCES color (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE UNIQUE INDEX id_UNIQUE ON service.roller_skates (id);
CREATE INDEX product_id_fkey_idx ON service.roller_skates (product_id);
CREATE INDEX brand_id_fkey ON service.roller_skates (brand_id);
CREATE INDEX fixation_fkey ON service.roller_skates (fixation_id);
CREATE INDEX foot_size_fkey ON service.roller_skates (foot_size_id);
CREATE INDEX quality_id_fk ON service.roller_skates (quality_id);
CREATE INDEX fk_image_id ON service.roller_skates (image_id);
CREATE INDEX color_id_fk ON service.roller_skates (color_id);