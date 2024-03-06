USE melody_emporium;

-- table genres
INSERT INTO genres (genre_id, name) VALUES (1, 'Rock');
INSERT INTO genres (genre_id, name) VALUES (2, 'Pop');
INSERT INTO genres (genre_id, name) VALUES (3, 'Hip Hop');
INSERT INTO genres (genre_id, name) VALUES (4, 'R&B');
INSERT INTO genres (genre_id, name) VALUES (5, 'Country');
INSERT INTO genres (genre_id, name) VALUES (6, 'Electronic');
INSERT INTO genres (genre_id, name) VALUES (7, 'Jazz');
INSERT INTO genres (genre_id, name) VALUES (8, 'Blues');
INSERT INTO genres (genre_id, name) VALUES (9, 'Reggae');
INSERT INTO genres (genre_id, name) VALUES (10, 'Classical');
INSERT INTO genres (genre_id, name) VALUES (11, 'Folk');
INSERT INTO genres (genre_id, name) VALUES (12, 'Indie');
INSERT INTO genres (genre_id, name) VALUES (13, 'Metal');
INSERT INTO genres (genre_id, name) VALUES (14, 'Punk');
INSERT INTO genres (genre_id, name) VALUES (15, 'Soul');
INSERT INTO genres (genre_id, name) VALUES (16, 'Funk');
INSERT INTO genres (genre_id, name) VALUES (17, 'Disco');
INSERT INTO genres (genre_id, name) VALUES (18, 'Gospel');
INSERT INTO genres (genre_id, name) VALUES (19, 'Techno');
INSERT INTO genres (genre_id, name) VALUES (20, 'House');
INSERT INTO genres (genre_id, name) VALUES (21, 'Ambient');
INSERT INTO genres (genre_id, name) VALUES (22, 'Dubstep');
INSERT INTO genres (genre_id, name) VALUES (23, 'Ska');
INSERT INTO genres (genre_id, name) VALUES (24, 'Trance');
INSERT INTO genres (genre_id, name) VALUES (25, 'Latin');


-- table artists 
INSERT INTO artists (artist_id, name)
VALUES 
(1, 'Michael Jackson'),
(2, 'The Beatles'),
(3, 'Elvis Presley'),
(4, 'Madonna'),
(5, 'Queen'),
(6, 'Bob Dylan'),
(7, 'David Bowie'),
(8, 'Prince'),
(9, 'Led Zeppelin'),
(10, 'Bob Marley'),
(11, 'Pink Floyd'),
(12, 'Beyoncé'),
(13, 'The Rolling Stones'),
(14, 'Bruce Springsteen'),
(15, 'U2'),
(16, 'Stevie Wonder'),
(17, 'Adele'),
(18, 'Eminem'),
(19, 'Whitney Houston'),
(20, 'Coldplay'),
(21, 'Taylor Swift'),
(22, 'Rihanna'),
(23, 'Metallica'),
(24, 'Kanye West'),
(25, 'Nirvana');

-- table product_categories 
INSERT INTO product_categories (product_category_id, name, description, color)
VALUES 
(1, 'Vinilos', 'Vinilos musicales', 'FF0000'), 
(2, 'CDs', 'CDs musicales', '0000FF'), 
(3, 'Casetes', 'Casetes musicales', '00FF00'), 
(4, 'Ediciones Especiales de Vinilos', 'Vinilos musicales ediciones especiales', 'FF00FF'), 
(5, 'Ediciones Especiales de CDs', 'CDs musicales ediciones especiales', 'FFFF00'), 
(6, 'Ediciones Especiales de Casetes', 'Casetes musicales ediciones especiales', '00FFFF'), 
(7, 'Vinilos Clásicos', 'Vinilos de música clásica', '800000'),
(8, 'Vinilos de Rock', 'Vinilos de música rock', '008000'), 
(9, 'Vinilos de Pop', 'Vinilos de música pop', '800080'),
(10, 'CDs de Jazz', 'CDs de música jazz', '008080'), 
(11, 'CDs de Blues', 'CDs de música blues', '000080'), 
(12, 'CDs de Indie', 'CDs de música indie', '8000FF'), 
(13, 'Casetes de Reggae', 'Casetes de música reggae', 'FFFF80'), 
(14, 'Casetes de Folk', 'Casetes de música folk', '808000'), 
(15, 'Vinilos de Metal', 'Vinilos de música metal', 'C0C0C0'), 
(16, 'CDs de Punk', 'CDs de música punk', 'FFA500'), 
(17, 'Vinilos de Soul', 'Vinilos de música soul', 'FF4500'), 
(18, 'Casetes de Funk', 'Casetes de música funk', 'A52A2A'), 
(19, 'CDs de Country', 'CDs de música country', 'FFD700'), 
(20, 'Vinilos de Reggaetón', 'Vinilos de música reggaetón', '2F4F4F'), 
(21, 'CDs de Electrónica', 'CDs de música electrónica', 'ADFF2F'), 
(22, 'Casetes de R&B', 'Casetes de música R&B', 'D2B48C'), 
(23, 'Vinilos de Hip Hop', 'Vinilos de música hip hop', '8A2BE2'), 
(24, 'CDs de Clásica', 'CDs de música clásica', '4B0082'), 
(25, 'Casetes de Rock', 'Casetes de música rock', 'FFFF00'); 

-- table prodcucts 
INSERT INTO products (product_id, name, short_description, details, features, picture_url, price, promo_price, units_in_stock, product_category_id, genre_id, artist_id, primary_variant_price, rating_stars)
VALUES 
(1, 'Vinilo de Thriller', 'Vinilo de Michael Jackson', 'Vinilo de edición especial del álbum Thriller de Michael Jackson.', 'Vinilo LP de 180 gramos. Edición remasterizada.', '', 29.99, NULL, 50, 4, 17, 1, 29.99, 4),
(2, 'CD de Abbey Road', 'CD de The Beatles', 'CD remasterizado del álbum Abbey Road de The Beatles.', 'CD con calidad de sonido mejorada.', '', 12.99, NULL, 100, 5, 1, 2, 12.99, 4),
(3, 'Casete de Elvis Presley', 'Casete de Elvis Presley', 'Casete original del álbum Greatest Hits de Elvis Presley.', 'Casete de alta calidad en estuche de plástico.', '', 9.99, NULL, 30, 6, 3, 2, 9.99, 4),
(4, 'Vinilo de Like a Prayer', 'Vinilo de Madonna', 'Vinilo de la artista Madonna con el álbum Like a Prayer.', 'Vinilo LP de 180 gramos. Edición limitada.', '', 24.99, NULL, 75, 4, 18, 4, 24.99, 4),
(5, 'CD de Greatest Hits', 'CD de Queen', 'CD con los mejores éxitos de Queen', 'CD con calidad de sonido impecable.', '', 14.99, NULL, 80, 5, 1, 5, 14.99, 4),
(6, 'Casete de Highway 61 Revisited', 'Casete de Bob Dylan', 'Casete original del álbum Highway 61 Revisited de Bob Dylan.', 'Casete vintage en estuche de cartón.', '', 11.99, NULL, 40, 6, 11, 6, 11.99, 4),
(7, 'Vinilo de Ziggy Stardust', 'Vinilo de David Bowie', 'Vinilo del legendario álbum The Rise and Fall of Ziggy Stardust de David Bowie.', 'Vinilo LP de 180 gramos. Edición limitada.', '', 27.99, NULL, 60, 4, 7, 7, 27.99, 4),
(8, 'CD de Purple Rain', 'CD de Prince', 'CD del icónico álbum Purple Rain de Prince.', 'CD con calidad de sonido mejorada.', '', 16.99, NULL, 90, 5, 1, 8, 16.99, 4),
(9, 'Vinilo de IV', 'Vinilo de Led Zeppelin', 'Vinilo del álbum IV de Led Zeppelin.', 'Vinilo LP de 180 gramos. Edición remasterizada.', '', 21.99, NULL, 70, 4, 13, 9, 21.99, 4),
(10, 'CD de Legend', 'CD de Bob Marley', 'CD del legendario álbum Legend de Bob Marley.', 'CD con calidad de sonido excepcional.', '', 18.99, NULL, 110, 5, 1, 10, 18.99, 4),
(11, 'Vinilo de The Dark Side of the Moon', 'Vinilo de Pink Floyd', 'Vinilo de la famosa obra The Dark Side of the Moon de Pink Floyd.', 'Vinilo LP de 180 gramos. Edición limitada.', '', 29.99, NULL, 85, 4, 11, 11, 29.99, 4),
(12, 'CD de Lemonade', 'CD de Beyoncé', 'CD del álbum Lemonade de Beyoncé.', 'CD con contenido visual y calidad de sonido superior.', '', 19.99, NULL, 95, 5, 1, 12, 19.99, 4),
(13, 'Vinilo de Sticky Fingers', 'Vinilo de The Rolling Stones', 'Vinilo del clásico álbum Sticky Fingers de The Rolling Stones.', 'Vinilo LP de 180 gramos. Incluye la icónica portada con cremallera.', '', 23.99, NULL, 65, 4, 13, 13, 23.99, 4),
(14, 'CD de Born to Run', 'CD de Bruce Springsteen', 'CD del álbum Born to Run de Bruce Springsteen.', 'CD remasterizado con material adicional.', '', 17.99, NULL, 120, 5, 1, 14, 17.99, 4),
(15, 'Vinilo de The Joshua Tree', 'Vinilo de U2', 'Vinilo del exitoso álbum The Joshua Tree de U2.', 'Vinilo LP de 180 gramos. Edición remasterizada.', '', 25.99, NULL, 55, 4, 17, 15, 25.99, 4),
(16, 'CD de Songs in the Key of Life', 'CD de Stevie Wonder', 'CD del aclamado álbum Songs in the Key of Life de Stevie Wonder.', 'CD con calidad de sonido excepcional.', '', 15.99, NULL, 105, 5, 1, 16, 15.99, 4),
(17, 'Vinilo de 25', 'Vinilo de Adele', 'Vinilo del exitoso álbum 25 de Adele.', 'Vinilo LP de 180 gramos. Incluye éxitos como "Hello" y "Rolling in the Deep".', '', 22.99, NULL, 45, 4, 17, 17, 22.99, 4),
(18, 'CD de Recovery', 'CD de Eminem', 'CD del álbum Recovery de Eminem.', 'CD con letras explícitas y ritmos potentes.', '', 13.99, NULL, 130, 5, 1, 18, 13.99, 4),
(19, 'Vinilo de Whitney Houston', 'Vinilo de Whitney Houston', 'Vinilo de los mejores éxitos de Whitney Houston.', 'Vinilo LP de 180 gramos. Edición especial.', '', 20.99, NULL, 75, 4, 15, 19, 20.99, 4),
(20, 'CD de A Rush of Blood to the Head', 'CD de Coldplay', 'CD del álbum A Rush of Blood to the Head de Coldplay.', 'CD con calidad de sonido impecable.', '', 11.99, NULL, 140, 5, 1, 20, 11.99, 4),
(21, 'Vinilo de 1989', 'Vinilo de Taylor Swift', 'Vinilo del exitoso álbum 1989 de Taylor Swift.', 'Vinilo LP de 180 gramos. Edición especial.', '', 26.99, NULL, 50, 4, 17, 21, 26.99, 4),
(22, 'CD de Anti', 'CD de Rihanna', 'CD del álbum Anti de Rihanna.', 'CD con contenido exclusivo y calidad de sonido superior.', '', 14.99, NULL, 160, 5, 1, 22, 14.99, 4),
(23, 'Vinilo de Master of Puppets', 'Vinilo de Metallica', 'Vinilo del legendario álbum Master of Puppets de Metallica.', 'Vinilo LP de 180 gramos. Edición remasterizada.', '', 30.99, NULL, 65, 4, 13, 23, 30.99, 4),
(24, 'CD de Yeezus', 'CD de Kanye West', 'CD del álbum Yeezus de Kanye West.', 'CD con letras provocativas y ritmos innovadores.', '', 18.99, NULL, 150, 5, 1, 24, 18.99, 4),
(25, 'Vinilo de Nevermind', 'Vinilo de Nirvana', 'Vinilo del icónico álbum Nevermind de Nirvana.', 'Vinilo LP de 180 gramos. Incluye éxitos como "Smells Like Teen Spirit".', '', 24.99, NULL, 55, 4, 13, 25, 24.99, 4);



-- table users 
INSERT INTO users (user_id, name, email, pass, picture_url, is_admin, is_active) VALUES 
(1, 'Juan Pérez', 'juan@example.com', 'password123', '', 1, 1),
(2, 'María García', 'maria@example.com', 'password456', '', 0, 1),
(3, 'Carlos Rodríguez', 'carlos@example.com', 'password789', '', 0, 1),
(4, 'Ana Martínez', 'ana@example.com', 'passwordabc', '', 0, 1),
(5, 'Luisa Sánchez', 'luisa@example.com', 'passworddef', '', 0, 1),
(6, 'Pedro López', 'pedro@example.com', 'passwordghi', '', 0, 1),
(7, 'Laura González', 'laura@example.com', 'passwordjkl', '', 0, 1),
(8, 'Miguel Fernández', 'miguel@example.com', 'passwordmno', '', 0, 1),
(9, 'Sofía Díaz', 'sofia@example.com', 'passwordpqr', '', 1, 1),
(10, 'Javier Ruiz', 'javier@example.com', 'passwordstu', '', 0, 1),
(11, 'Elena Gómez', 'elena@example.com', 'passwordvwx', '', 1, 1),
(12, 'David Torres', 'david@example.com', 'passwordyz1', '', 1, 1),
(13, 'Marina Navarro', 'marina@example.com', 'password234', '', 0, 0),
(14, 'Alejandro Jiménez', 'alejandro@example.com', 'password567', '', 0, 0),
(15, 'Carmen Ruiz', 'carmen@example.com', 'password890', '', 1, 0),
(16, 'José López', 'jose@example.com', 'passwordabc1', '', 0, 1),
(17, 'Paula Martínez', 'paula@example.com', 'passworddef2', '', 0, 1),
(18, 'Francisco Sánchez', 'francisco@example.com', 'passwordghi3', '', 0, 0),
(19, 'Andrea García', 'andrea@example.com', 'passwordjkl4', '', 0, 1),
(20, 'Daniel Pérez', 'daniel@example.com', 'passwordmno5', '', 0, 1),
(21, 'Lucía González', 'lucia@example.com', 'passwordpqr6', '', 0, 1),
(22, 'Sergio Fernández', 'sergio@example.com', 'passwordstu7', '', 0, 1),
(23, 'Natalia Díaz', 'natalia@example.com', 'passwordvwx8', '', 0, 1),
(24, 'Sara Ruiz', 'sara@example.com', 'passwordyz9', '', 0, 1),
(25, 'Pablo Jiménez', 'pablo@example.com', 'password2345', '', 0, 1);


-- table carts 
INSERT INTO carts (cart_id, user_id, subtotal) VALUES 
(1, 1, 50.25),
(2, 2, 75.80),
(3, 3, 100.00),
(4, 4, 25.50),
(5, 5, 60.75),
(6, 6, 80.20),
(7, 7, 90.00),
(8, 8, 35.99),
(9, 9, 70.45),
(10, 10, 110.60),
(11, 11, 45.75),
(12, 12, 88.30),
(13, 13, 120.00),
(14, 14, 55.99),
(15, 15, 65.25),
(16, 16, 95.80),
(17, 17, 130.00),
(18, 18, 40.50),
(19, 19, 75.75),
(20, 20, 85.20),
(21, 21, 99.00),
(22, 22, 48.99),
(23, 23, 110.45),
(24, 24, 140.60),
(25, 25, 60.75);


-- table cart_items 
INSERT INTO cart_items (cart_item, product_id, cart_id, unit_price, amount, quantity) VALUES 
(1, 1, 1, 29.99, 29.99, 1),
(2, 2, 2, 12.99, 25.98, 2),
(3, 3, 3, 9.99, 9.99, 1),
(4, 4, 4, 24.99, 24.99, 1),
(5, 5, 5, 14.99, 29.98, 2),
(6, 6, 6, 11.99, 35.97, 3),
(7, 7, 7, 27.99, 27.99, 1),
(8, 8, 8, 16.99, 16.99, 1),
(9, 9, 9, 21.99, 65.97, 3),
(10, 10, 10, 18.99, 75.96, 4),
(11, 11, 11, 29.99, 59.98, 2),
(12, 12, 12, 19.99, 79.96, 4),
(13, 13, 13, 23.99, 47.98, 2),
(14, 14, 14, 17.99, 17.99, 1),
(15, 15, 15, 25.99, 77.97, 3),
(16, 16, 16, 15.99, 15.99, 1),
(17, 17, 17, 22.99, 91.96, 4),
(18, 18, 18, 13.99, 13.99, 1),
(19, 19, 19, 20.99, 41.98, 2),
(20, 20, 20, 11.99, 23.98, 2),
(21, 21, 21, 26.99, 26.99, 1),
(22, 22, 22, 14.99, 29.98, 2),
(23, 23, 23, 30.99, 92.97, 3),
(24, 24, 24, 18.99, 37.98, 2),
(25, 25, 25, 24.99, 74.97, 3);


-- table client_ratings 
INSERT INTO client_ratings (client_rating_id, stars_given, comments, date_recorded, product_id, user_id) VALUES 
(1, 5, '¡Excelente producto!', '2024-03-01', 1, 1),
(2, 4, 'Buen vinilo, pero la entrega fue un poco lenta.', '2024-02-28', 2, 2),
(3, 5, '¡Me encanta este casete! Gran calidad de sonido.', '2024-02-29', 3, 3),
(4, 4, 'Muy buen vinilo, aunque la portada llegó un poco dañada.', '2024-03-01', 4, 4),
(5, 5, '¡Increíble CD! Sonido perfecto.', '2024-03-02', 5, 5),
(6, 4, 'El casete tiene un buen sonido, pero el estuche está roto.', '2024-03-03', 6, 6),
(7, 5, '¡Maravilloso vinilo! Entrega rápida y en perfectas condiciones.', '2024-03-04', 7, 7),
(8, 4, 'CD excelente, pero la entrega se retrasó un poco.', '2024-03-05', 8, 8),
(9, 5, 'Gran vinilo, exactamente como se describe.', '2024-03-06', 9, 9),
(10, 4, 'Buen CD, pero la portada llegó rayada.', '2024-03-07', 10, 10),
(11, 5, '¡Impresionante vinilo! ¡Lo recomiendo completamente!', '2024-03-08', 11, 11),
(12, 4, 'Buen CD, pero esperaba una mejor calidad de sonido.', '2024-03-09', 12, 12),
(13, 5, '¡El mejor vinilo que he comprado! ¡Sonido espectacular!', '2024-03-10', 13, 13),
(14, 4, 'El CD llegó un poco tarde, pero está en buenas condiciones.', '2024-03-11', 14, 14),
(15, 5, 'Vinilo de alta calidad, excelente servicio al cliente.', '2024-03-12', 15, 15),
(16, 4, 'Buen CD, pero la entrega se retrasó un poco.', '2024-03-13', 16, 16),
(17, 5, '¡Me encanta este vinilo! ¡Sonido perfecto!', '2024-03-14', 17, 17),
(18, 4, 'CD excelente, pero la portada llegó dañada.', '2024-03-15', 18, 18),
(19, 5, 'Gran vinilo, exactamente como se describe.', '2024-03-16', 19, 19),
(20, 4, 'Buen CD, pero esperaba una mejor calidad de sonido.', '2024-03-17', 20, 20),
(21, 5, '¡El mejor vinilo que he comprado! ¡Sonido espectacular!', '2024-03-18', 21, 21),
(22, 4, 'El CD llegó un poco tarde, pero está en buenas condiciones.', '2024-03-19', 22, 22),
(23, 5, 'Vinilo de alta calidad, excelente servicio al cliente.', '2024-03-20', 23, 23),
(24, 4, 'Buen CD, pero la entrega se retrasó un poco.', '2024-03-21', 24, 24),
(25, 5, '¡Me encanta este vinilo! ¡Sonido perfecto!', '2024-03-22', 25, 25);
