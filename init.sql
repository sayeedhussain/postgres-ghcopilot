CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_name TEXT NOT NULL,
    amount NUMERIC(10,2) NOT NULL,
    status TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO orders (customer_name, amount, status)
SELECT
    'Customer_' || g,
    round((random()*1000)::numeric, 2),
    (ARRAY['PENDING','SHIPPED','DELIVERED','CANCELLED'])[1+floor(random()*4)]
FROM generate_series(1,100) g;
