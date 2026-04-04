DROP TABLE IF EXISTS order_items;
CREATE TABLE order_items (
    order_id uuid NOT NULL,
    order_item_id INT NOT NULL,
    product_id uuid NOT NULL,
    seller_id uuid NOT NULL,
    shipping_limit_date TIMESTAMP,
    price FLOAT8 NOT NULL,
    freight_value FLOAT8 NOT NULL,

    PRIMARY KEY (order_id, order_item_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (seller_id) REFERENCES sellers(seller_id)
);