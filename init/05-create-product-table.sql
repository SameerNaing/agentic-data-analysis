DROP TABLE IF EXISTS products;
CREATE TABLE products (
    product_id uuid PRIMARY KEY,
    product_name_length INT,
    product_description_length INT,
    product_photos_qty INT,
    product_weight_g FLOAT8,
    product_length_cm FLOAT8,
    product_height_cm FLOAT8,
    product_width_cm FLOAT8,
    product_category_name VARCHAR(255)
);