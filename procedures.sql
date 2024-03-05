USE melody_emporium;

SET GLOBAL log_bin_trust_function_creators = 1;

# Calculate ratings average
DELIMITER //

CREATE TRIGGER calculate_product_rating
AFTER INSERT ON client_ratings
FOR EACH ROW
BEGIN
    DECLARE avg_rating DECIMAL(4,2);

    SELECT AVG(stars_given) INTO avg_rating
    FROM client_ratings
    WHERE product_id = NEW.product_id;

    UPDATE products
    SET rating_stars = avg_rating
    WHERE product_id = NEW.product_id;
END;
//

DELIMITER ;

# Calculate subtotal of a cart given its id
DELIMITER //

CREATE FUNCTION calculate_cart_subtotal(cart_id_given INT) RETURNS DECIMAL(10,2)
BEGIN
    DECLARE subtotal DECIMAL(10,2);

    SELECT SUM(unit_price * quantity) INTO subtotal
    FROM cart_items
    WHERE cart_id_given = cart_items.cart_id;

    RETURN subtotal;
END;
//

DELIMITER ;

# Update promo price of a product given its id
DELIMITER //

CREATE PROCEDURE update_promo_price(IN product_id_given INT, IN promo_price DECIMAL(10,2))
BEGIN
    UPDATE products
    SET promo_price = promo_price
    WHERE product_id_given = products.product_id;
END;
//

DELIMITER ;
