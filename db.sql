CREATE
DATABASE db;

CREATE TABLE users
(
    id        varchar(36),
    user_name varchar(255),
    name      varchar(255),
    last_name varchar(255),
    role      varchar(255),
    PRIMARY KEY (id)
);