CREATE TABLE service.user
(
    id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    first_name varchar(45) NOT NULL,
    middle_name varchar(45) NOT NULL,
    last_name varchar(45) NOT NULL,
    email varchar(45) NOT NULL,
    login varchar(45) NOT NULL,
    password varchar(45) NOT NULL,
    role_id int(11),
    image_id int(11) NOT NULL,
    phone_number varchar(45) NOT NULL,
    isBanned tinyint(4) DEFAULT '0' NOT NULL,
    CONSTRAINT role_id_fkey FOREIGN KEY (role_id) REFERENCES role (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT image_id_fk FOREIGN KEY (image_id) REFERENCES image (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE UNIQUE INDEX id_UNIQUE ON service.user (id);
CREATE UNIQUE INDEX person_email_uindex ON service.user (email);
CREATE UNIQUE INDEX person_login_uindex ON service.user (login);
CREATE INDEX role_id_fkey ON service.user (role_id);
CREATE INDEX image_id_fk ON service.user (image_id);