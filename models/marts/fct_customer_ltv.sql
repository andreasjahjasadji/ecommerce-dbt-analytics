select
    c.customer_id,
    c.name,
    c.city,
    count(o.order_id) as total_orders,
    sum(o.amount) as lifetime_value,
    avg(o.amount) as avg_order_value
from {{ ref('dim_customers') }} c
left join {{ ref('fct_orders') }} o
    on c.customer_id = o.customer_id
group by 1,2,3