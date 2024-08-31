select 
    o.order_id,
    c,
    o.num_of_item
from
    (select 
        order_id,
        count(id) as c 
    from
        {{ source('raw', 'order_items') }}
    group by 
        order_id) a
join 
    {{ source('raw', 'orders') }} o
on 
    o.order_id = a.order_id
where 
    c != o.num_of_item