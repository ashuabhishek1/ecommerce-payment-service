CREATE TABLE payments (
    payment_id VARCHAR(36) PRIMARY KEY,
    order_id VARCHAR(36),
    customer_id VARCHAR(36),
    status VARCHAR(50) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);