DROP TYPE IF EXISTS order_status;
CREATE TYPE order_status AS ENUM ('delivered',  'invoiced', 'shipped',  'processing', 'unavailable', 'canceled', 'created', 'approved');     


DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
    order_id uuid PRIMARY KEY,
    customer_id uuid NOT NULL UNIQUE,
    order_status order_status NOT NULL,
    order_purchase_timestamp TIMESTAMP,
    order_approved_at TIMESTAMP,
    order_delivered_carrier_date TIMESTAMP,
    order_delivered_customer_date TIMESTAMP,
    order_estimated_delivery_date TIMESTAMP,

    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);