CREATE
DATABASE db;

USE db;

CREATE TABLE users
(
    id           varchar(36),
    user_name    varchar(255) NOT NULL,
    password     varchar(255) NOT NULL,
    name         varchar(255) NOT NULL,
    last_name    varchar(255) NOT NULL,
    is_admin     TINYINT(1) NOT NULL DEFAULT 0,
    is_warehouse TINYINT(1) NOT NULL DEFAULT 0,
    is_client    TINYINT(1) NOT NULL DEFAULT 0,
    PRIMARY KEY (id)
);

INSERT INTO users VALUES ("740d9fa7-f6b7-49db-bf19-e343ff00f537", "admin", "password", "Admin", "User", 1, 0, 0);