CREATE DATABASE db CHARACTER SET utf32 COLLATE utf32_bin;

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

INSERT INTO products
VALUES ("402f513f-f6ca-4814-81c5-5d617adaa51a", "Llantas deportivas", "Mejora el estilo y el rendimiento de tu vehículo con llantas de aleación deportivas.", 20),
       ("8d63427a-5bc4-4f0a-841d-f3197f2d633d", "Kit de limpieza", "Mantén tu coche impecable con nuestro kit de limpieza automotriz.", 20),
       ("595eb88e-9a03-437f-b738-e71df9fbcbe6", "Asientos ergonómicos", "Confort y soporte garantizados con nuestros asientos deportivos.", 20),
       ("4f25c69f-57aa-4bbc-89c4-9efa3e680d1e", "Escape deportivo", "Sonido potente y mejora de rendimiento con nuestro escape deportivo.", 10),
       ("a6416ce6-9bf4-4331-963d-e7c4cd7bdded", "Faros LED brillantes", "Mejora tu visibilidad en la carretera con nuestros faros LED.", 10),
       ("9449a2e0-6e86-461e-8614-bba1151c97e8", "Suspensión ajustable", "Mejora tu manejo con nuestra suspensión deportiva ajustable.", 10),
       ("ad10d049-2019-4b55-8138-09e4f322b735", "Kit de pulido y encerado", "Mantén tu coche reluciente con nuestro kit de pulido y encerado.", 5),
       ("a696f934-4277-4522-9a99-d6b7ea50e853", "Frenos de alto rendimiento", "Frenado superior en todas las condiciones con nuestros frenos de alto rendimiento.", 5),
       ("25286168-59f1-4c2a-9cc8-dac0238ec659", "Sistema de sonido premium", "Disfruta de audio de alta calidad en tu coche con nuestro sistema premium.", 5),
       ("eb86c184-b87a-4e7b-880a-9c795f37f990", "Cubiertas de asientos de cuero", "Protege y añade elegancia a tus asientos con nuestras cubiertas de cuero.", 0);