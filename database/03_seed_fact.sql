INSERT INTO fact_sales
(product_id, customer_id, order_date, quantity, unit_price)
SELECT
    floor(random()*20 + 1)::int,
    floor(random()*30 + 1)::int,
    CURRENT_DATE - (floor(random()*120))::int,
    floor(random()*3 + 1)::int,
    round((product_cost * (1.2 + random()*0.5))::numeric,2)
FROM dim_products
CROSS JOIN generate_series(1,10)
LIMIT 200;
