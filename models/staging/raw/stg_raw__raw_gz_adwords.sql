with 

source as (

    select * from {{ source('raw', 'raw_gz_adwords') }}

),

renamed as (

    select

    from source

)

select * from renamed
