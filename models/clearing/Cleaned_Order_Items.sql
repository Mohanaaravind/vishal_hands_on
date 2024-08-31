select
    id,
    order_id,
    user_id,
    product_id,
    status,
    created_at,
returned_at,
delivered_at,
shipped_at,

    sale_price

from (
     select 
        *, rank() over( partition by order_id, product_id order by created_at ) as r
    from  {{ ref('stg_order_items') }}

)

where r=1