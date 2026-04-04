DROP TABLE IF EXISTS order_reviews;
CREATE TABLE order_reviews (
    review_id uuid PRIMARY KEY,
    order_id uuid NOT NULL,
    review_score INT NOT NULL,
    review_comment_title VARCHAR(255),
    review_comment_message TEXT,
    review_comment_date TIMESTAMP,
    review_answer_timestamp TIMESTAMP,

    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);