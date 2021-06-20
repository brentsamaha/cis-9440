select 
    orderid as order_id,
    id as payment_id,
    paymentmethod as payment_method,
    status,
    {{ cents_to_dollars('amount') }} as amount,
    created

from {{ source('stripe','payment')}}