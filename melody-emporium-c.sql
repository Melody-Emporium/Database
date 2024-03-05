DROP DATABASE IF EXISTS melody_emporium;
CREATE DATABASE IF NOT EXISTS melody_emporium;
USE melody_emporium;

-- Usuario para la base de datos
CREATE USER 'emporioso_1'@'%' IDENTIFIED WITH mysql_native_password BY 'melodia_emporiosa';

-- Asignar permisos DML
GRANT INSERT, UPDATE, DELETE, SELECT ON melody_emporium.* TO 'emporioso_1'@'%' WITH GRANT OPTION;

-- Asignar permisos para ejecutar y crear funciones, procedimientos, triggers y vistas
GRANT PROCESS, EXECUTE, CREATE ROUTINE, ALTER ROUTINE, CREATE VIEW ON melody_emporium.* TO 'emporioso_1'@'%';


-- Create genres table
CREATE TABLE genres
(
    genre_id    INT PRIMARY KEY NOT NULL,
    name        VARCHAR(255)    NOT NULL,
    picture_url TINYTEXT
);

-- Create artists table
CREATE TABLE artists
(
    artist_id   INT PRIMARY KEY NOT NULL,
    name        VARCHAR(255)    NOT NULL,
    picture_url TINYTEXT
);

-- Create product_categories table
CREATE TABLE product_categories
(
    product_category_id INT PRIMARY KEY NOT NULL,
    name                VARCHAR(255)    NOT NULL,
    description         TINYTEXT        NOT NULL,
    color               VARCHAR(6) DEFAULT 'ECD0C0',
    picture_url         TINYTEXT
);

-- Create products table
CREATE TABLE products
(
    product_id            INT PRIMARY KEY NOT NULL,
    name                  TINYTEXT        NOT NULL,
    short_description     LONGTEXT        NOT NULL,
    details               LONGTEXT        NOT NULL,
    features              LONGTEXT        NOT NULL,
    picture_url           TINYTEXT        NOT NULL,
    price                 DECIMAL(10, 2)  NOT NULL DEFAULT 0.0,
    promo_price           DECIMAL(10, 2)  NULL     DEFAULT 0.0,
    units_in_stock        INT             NOT NULL DEFAULT 0,
    product_category_id   INT,
    genre_id              INT,
    artist_id             INT,
    primary_variant_price DECIMAL(10, 2) UNSIGNED,
    rating_stars          TINYINT         NOT NULL DEFAULT 0
);

-- Add foreign key constraints
ALTER TABLE products
    ADD CONSTRAINT fk_products_product_categories
        FOREIGN KEY (product_category_id) REFERENCES product_categories (product_category_id);

ALTER TABLE products
    ADD CONSTRAINT fk_products_genres
        FOREIGN KEY (genre_id) REFERENCES genres (genre_id);

ALTER TABLE products
    ADD CONSTRAINT fk_products_artists
        FOREIGN KEY (artist_id) REFERENCES artists (artist_id);

-- Create users table
CREATE TABLE users
(
    user_id     INT PRIMARY KEY NOT NULL,
    name        VARCHAR(255)    NOT NULL,
    email       VARCHAR(255)    NOT NULL,
    pass        VARCHAR(255)    NOT NULL,
    picture_url TINYTEXT        NOT NULL,
    is_admin    BOOLEAN         NOT NULL DEFAULT 0,
    is_active   BOOLEAN         NOT NULL DEFAULT 1
);

-- Create carts table
CREATE TABLE carts
(
    cart_id  INT PRIMARY KEY NOT NULL,
    user_id  INT             NOT NULL,
    subtotal DECIMAL(10, 2)  NOT NULL DEFAULT 0.0
);

-- Add foreign key constraint
ALTER TABLE carts
    ADD CONSTRAINT fk_carts_clients
        FOREIGN KEY (user_id) REFERENCES users (user_id);


-- Create cart_items table
CREATE TABLE cart_items
(
    cart_item  INT PRIMARY KEY         NOT NULL,
    product_id INT                     NOT NULL,
    cart_id    INT                     NOT NULL,
    unit_price DECIMAL(10, 2) UNSIGNED NOT NULL,
    amount     DECIMAL(10, 2) UNSIGNED NOT NULL,
    quantity   INT                     NOT NULL
);

-- Add foreign key constraints
ALTER TABLE cart_items
    ADD CONSTRAINT fk_cart_items_products
        FOREIGN KEY (product_id) REFERENCES products (product_id);


ALTER TABLE cart_items
    ADD CONSTRAINT fk_cart_items_carts
        FOREIGN KEY (cart_id) REFERENCES carts (cart_id);

-- Create client_ratings table
CREATE TABLE client_ratings
(
    client_rating_id INT PRIMARY KEY NOT NULL,
    stars_given      TINYINT         NOT NULL,
    comments         TINYTEXT,
    date_recorded    DATE            NOT NULL,
    product_id       INT,
    user_id          INT             NOT NULL
);

-- Add foreign key constraints
ALTER TABLE client_ratings
    ADD CONSTRAINT fk_client_ratings_products
        FOREIGN KEY (product_id) REFERENCES products (product_id);


ALTER TABLE client_ratings
    ADD CONSTRAINT fk_client_ratings_clients
        FOREIGN KEY (user_id) REFERENCES users (user_id);
