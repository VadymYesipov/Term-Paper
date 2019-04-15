CREATE TABLE service.skis
(
    id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    brand_id int(11) NOT NULL,
    quality_id int(11) NOT NULL,
    color_id int(11) NOT NULL,
    image_id int(11) NOT NULL,
    foot_size_id int(11) NOT NULL,
    fixation_id int(11) NOT NULL,
    description varchar(50),
    product_id int(11) NOT NULL,
    CONSTRAINT fkey_brand FOREIGN KEY (brand_id) REFERENCES brand (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fkey_quality FOREIGN KEY (quality_id) REFERENCES quality (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fkey_color_id FOREIGN KEY (color_id) REFERENCES color (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fkey_image_id FOREIGN KEY (image_id) REFERENCES image (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fkey_foot_size FOREIGN KEY (foot_size_id) REFERENCES foot_size (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fkey_fixation FOREIGN KEY (fixation_id) REFERENCES fixation (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fey_product_id FOREIGN KEY (product_id) REFERENCES product (product_id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE UNIQUE INDEX skis_id_uindex ON service.skis (id);
CREATE INDEX fkey_brand ON service.skis (brand_id);
CREATE INDEX fkey_quality ON service.skis (quality_id);
CREATE INDEX fkey_color_id ON service.skis (color_id);
CREATE INDEX fkey_image_id ON service.skis (image_id);
CREATE INDEX fkey_foot_size ON service.skis (foot_size_id);
CREATE INDEX fkey_fixation ON service.skis (fixation_id);
CREATE INDEX fey_product_id ON service.skis (product_id);