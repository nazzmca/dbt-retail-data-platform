select
    cast(order_id as integer) as order_id,
    cast(order_date as date) as order_date,
    customer_id,
    customer_name,
    product_id,
    product_name,
    category,
    cast(quantity as integer) as quantity,
    cast(unit_price as decimal(10,2)) as unit_price,
    country,
    quantity * unit_price as total_amount
from {{ source('retail_raw', 'raw_orders') }}