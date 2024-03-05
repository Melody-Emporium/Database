# Diccionario de datos

## Melody Emporium

---



### Tabla: `users`

| Campo           | Descripción                                | Tipo de dato | Longitud | Tipo de clave | Restricciones       |
|-----------------|--------------------------------------------|--------------|----------|---------------|---------------------|
| user_id         | Identificador único del usuario           | INT          |          | PK            | NOT NULL            |
| name            | Nombre del usuario                        | VARCHAR      | 255      |               | NOT NULL            |
| email           | Correo electrónico del usuario            | VARCHAR      | 255      |               | NOT NULL            |
| pass            | Contraseña del usuario                    | VARCHAR      | 255      |               | NOT NULL            |
| picture_url     | URL de la foto de perfil del usuario      | TINYTEXT     |          |               |                     |
| is_admin     |  Identificador de si es administrador       | BOOLEAN     |          |               |                  NOT NULL            |
| is_active     |  Identificador para saber si esta activo      | BOOLEAN     |          |               |                  NOT NULL            |


Descripción: Almacena información de usuarios registrados en el sistema.

---





### Tabla: `client_ratings`

| Campo             | Descripción                                | Tipo de dato | Longitud | Tipo de clave | Restricciones       |
|-------------------|--------------------------------------------|--------------|----------|---------------|---------------------|
| client_rating_id  | Identificador único de la calificación    | INT          |          | PK            | NOT NULL            |
| stars_given       | Número de estrellas otorgadas             | TINYINT      |          |               | NOT NULL            |
| comments          | Comentarios adicionales                   | TINYTEXT     |          |               |                     |
| date_recorded     | Fecha en la que se registró la calificación | DATE      |          |               | NOT NULL            |
| product_id        | ID del producto calificado                | INT          |          | FK            |                     |
| user_id          | ID del usuario que calificó                   | INT          |          | FK            |         NOT NULL            |

Descripción: Almacena las calificaciones de clientes sobre productos o merch.

---

### Tabla: `carts`

| Campo           | Descripción                               | Tipo de dato | Longitud | Tipo de clave | Restricciones       |
|-----------------|-------------------------------------------|--------------|----------|---------------|---------------------|
| cart_id         | Identificador único del carrito           | INT          |          | PK            | NOT NULL            |
| user_id       | ID del usuario asociado al carrito        | INT          |          | FK            | NOT NULL            |
| date        | Fecha del pedido                     | DATE      |     |               | NOT NULL |
| subtotal        | Subtotal del carrito                      | DECIMAL      | 10,2     |               | NOT NULL      |
| paid        | Pago del carrito                   | BOOLEAN      |      |               | NOT NULL        |

Descripción: Almacena información de los carritos de compra de los clientes.

---

### Tabla: `cart_items`

| Campo             | Descripción                                    | Tipo de dato | Longitud | Tipo de clave | Restricciones       |
|-------------------|------------------------------------------------|--------------|----------|---------------|---------------------|
| cart_item_id         | Identificador único del ítem del carrito       | INT          |          | PK            | NOT NULL            |
| product_id        | ID del producto asociado al ítem del carrito   | INT          |          | FK            |                     |     
| cart_id           | ID del carrito asociado al ítem                | INT          |          | FK            | NOT NULL            |
| unit_price        | Precio unitario del ítem                       | DECIMAL      | 10,2     |               | NOT NULL         |       
| amount| Cantidad de los items       | DECIMAL          | 10,2      |             |   NOT NULL                  |
| quantity          | Cantidad del ítem en el carrito                | INT          |          |               | NOT NULL            |

Descripción: Almacena los ítems de los carritos de compra de los clientes.

---

### Tabla: `product_categories`

| Campo             | Descripción                                    | Tipo de dato | Longitud | Tipo de clave | Restricciones       |
|-------------------|------------------------------------------------|--------------|----------|---------------|---------------------|
| product_category_id | Identificador único de la categoría de producto | INT        |          | PK            | NOT NULL            |
| name              | Nombre de la categoría de producto            | VARCHAR      | 255      |               | NOT NULL            |
| description       | Descripción de la categoría de producto       | TINYTEXT     |          |               | NOT NULL            |
| color             | Color asociado a la categoría de producto     | VARCHAR      | 6        |               | DEFAULT ECD0C0                    |
| picture_url     | URL de la foto de la categoria     | TINYTEXT     |          |          NOT NULL         | 

Descripción: Almacena las categorías de productos.

---

### Tabla: `products`

| Campo                 | Descripción                                    | Tipo de dato | Longitud | Tipo de clave | Restricciones       |
|-----------------------|------------------------------------------------|--------------|----------|---------------|---------------------|
| product_id            | Identificador único del producto               | INT          |          | PK            | NOT NULL            |
| name                  | Nombre del producto                            | TINYTEXT     |          |               | NOT NULL            |
| short_description     | Descripción corta del producto                 | LONGTEXT     |          |               | NOT NULL            |
| details               | Detalles del producto                          | LONGTEXT     |          |               | NOT NULL            |
| features              | Características del producto                   | LONGTEXT     |          |               | NOT NULL            |
| picture_url           | URL de la imagen del producto                  |      |          |               |      NOT NULL               |
| price| Precio de la variante principal del producto  | DECIMAL      | 10,2     |               |  NOT NULL                   |
| units_in_stock          | Unidades disponibles                   | INT      |          |               | NOT NULL          |
| promo_price           | Precio de promoción                    | DECIMAL      |    10,2      |    
| product_category_id   | ID de la categoría del producto                | INT          |          | FK            | NOT NULL            |
| genre_id              | ID del género musical asociado del producto                     | INT          |          | FK            | NOT NULL            |
| artist_id             | ID del artista asociado al producto            | INT          |          | FK            | NOT NULL            |
| primary_variant_price| Precio de la variante principal del producto  | DECIMAL      | 10,2     |               |  UNSIGNED                   |
| rating_stars          | Calificación del producto                      | TINYINT      |          |               | NOT NULL, DEFAULT 0            |

Descripción: Almacena información de los productos disponibles.

---


### Tabla: `artists`

| Campo             | Descripción                                    | Tipo de dato | Longitud | Tipo de clave | Restricciones       |
|-------------------|------------------------------------------------|--------------|----------|---------------|---------------------|
| artist_id         | Identificador único del artista               | INT          |          | PK            | NOT NULL            |
| name              | Nombre del artista                            | VARCHAR      | 255      |               | NOT NULL            |
| picture_url       | URL de la imagen del artista                  | TINYINT      |          |               |                     |
| main genre        | Género principal del artista                  | VARCHAR      | 255      |               |                     |                  

Descripción: Almacena información de los artistas.

---

### Tabla: `genres`

| Campo             | Descripción                                    | Tipo de dato | Longitud | Tipo de clave | Restricciones       |
|-------------------|------------------------------------------------|--------------|----------|---------------|---------------------|
| genre_id          | Identificador único del género                | INT          |          | PK            | NOT NULL            |
| name              | Nombre del género musical                            | VARCHAR      | 255      |               | NOT NULL            |
| picture_url       | URL de la imagen del género                   | VARCHAR      | 255      |               |                     |

Descripción: Almacena información de los géneros musicales.


