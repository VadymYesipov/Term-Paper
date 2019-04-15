CREATE TABLE service.bicycle_images
(
    bicycle_id bigint(20) NOT NULL,
    images_id bigint(20) NOT NULL
);
CREATE UNIQUE INDEX UK_dejvnblpd2taxfly27wxwvwe3 ON service.bicycle_images (images_id);
CREATE INDEX FKkovcs420jf89shsrkqp8jsocc ON service.bicycle_images (bicycle_id);