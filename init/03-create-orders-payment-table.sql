DROP TYPE IF EXISTS payment_type;
CREATE TYPE payment_type AS ENUM ('credit_card', 'boleto', 'voucher', 'debit_card', 'not_defined');

DROP TABLE IF EXISTS orders_payments;
CREATE TABLE orders_payments (
    order_id uuid,
    payment_sequential INT,
    payment_type payment_type NOT NULL, 
    payment_installments INT, 
    payment_value NUMERIC,

    PRIMARY KEY (order_id, payment_sequential),

    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);