COPY public.customers
FROM '/data/olist_customers_dataset.csv'
DELIMITER ','
CSV HEADER;

COPY public.orders 
FROM '/data/olist_orders_dataset.csv'
DELIMITER ','
CSV HEADER;

COPY public.products 
FROM '/data/olist_products_dataset.csv'
DELIMITER ','
CSV HEADER;

COPY public.sellers 
FROM '/data/olist_sellers_dataset.csv'
DELIMITER ','
CSV HEADER;

COPY public.order_items 
FROM '/data/olist_order_items_dataset.csv'
DELIMITER ','
CSV HEADER;

COPY public.order_reviews 
FROM '/data/olist_order_reviews_dataset.csv'
DELIMITER ','
CSV HEADER;


COPY public.orders_payments 
FROM '/data/olist_order_payments_dataset.csv'
DELIMITER ','
CSV HEADER;
