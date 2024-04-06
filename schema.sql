CREATE DATABASE db;

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

CREATE TABLE products
(
    id          varchar(36),
    name        varchar(255) NOT NULL,
    description varchar(255) NOT NULL,
    stock       int          NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO users
VALUES ("740d9fa7-f6b7-49db-bf19-e343ff00f537", "super", "password", "Super", "User", 1, 1, 1),
       ("99cc9369-bd4a-4cbe-b6bb-8d6f0eb1eef8", "admin", "password", "Admin", "User", 1, 0, 0),
       ("4e46ac1e-4f2e-4622-b4dc-25c565111007", "warehouse", "password", "Warehouse", "User", 0, 1, 0),
       ("5ab7979d-059b-42fd-8384-174264cc62d4", "client", "password", "Client", "User", 0, 0, 1);