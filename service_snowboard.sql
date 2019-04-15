CREATE TABLE service.snowboard
(
    id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    brand_id int(11) NOT NULL,
    quality_id int(11) NOT NULL,
    image_id int(11) NOT NULL,
    fixation_id int(11) NOT NULL,
    desciption varchar(45),
    foot_size int(11) NOT NULL,
    color_id int(11) NOT NULL,
    product_id int(11) NOT NULL,
    CONSTRAINT fk_brand FOREIGN KEY (brand_id) REFERENCES brand (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_quality FOREIGN KEY (quality_id) REFERENCES quality (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_image FOREIGN KEY (image_id) REFERENCES image (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_fixation FOREIGN KEY (fixation_id) REFERENCES fixation (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_foot_size FOREIGN KEY (foot_size) REFERENCES foot_size (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_color FOREIGN KEY (color_id) REFERENCES color (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES product (product_id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE UNIQUE INDEX snowboard_id_uindex ON service.snowboard (id);
CREATE INDEX fk_brand ON service.snowboard (brand_id);
CREATE INDEX fk_quality ON service.snowboard (quality_id);
CREATE INDEX fk_image ON service.snowboard (image_id);
CREATE INDEX fk_fixation ON service.snowboard (fixation_id);
CREATE INDEX fk_foot_size ON service.snowboard (foot_size);
CREATE INDEX fk_color ON service.snowboard (color_id);
CREATE INDEX fk_product ON service.snowboard (product_id);