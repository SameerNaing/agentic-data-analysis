DROP TABLE IF EXISTS sellers;
CREATE TABLE sellers (
    seller_id uuid PRIMARY KEY,
    seller_zip_code_prefix VARCHAR(255) NOT NULL,
    seller_city VARCHAR(255) NOT NULL,
    seller_state VARCHAR(255) NOT NULL
);