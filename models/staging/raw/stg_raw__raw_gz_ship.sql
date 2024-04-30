with 

source as (

    select * from {{ source('raw', 'raw_gz_ship') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,
        logcost,
        ship_cost

    from source

)

select * from renamed
