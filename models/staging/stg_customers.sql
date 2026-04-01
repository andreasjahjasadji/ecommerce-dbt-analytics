select
    customer_id,
    name,
    city
from {{ ref('customers') }}