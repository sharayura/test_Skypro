-- liquibase formatted sql

-- changeset yuri:1
CREATE TABLE if not exists socks
(
    id  BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    color  VARCHAR(32) NOT NULL,
    cotton_part  TINYINT NOT NULL,
    quantity BIGINT NOT NULL,
    UNIQUE (color, cotton_part)
);

-- changeset yuri:2
insert into socks (color, cotton_part, quantity) values ('black', 80, 20);
insert into socks (color, cotton_part, quantity) values ('green', 60, 30);
