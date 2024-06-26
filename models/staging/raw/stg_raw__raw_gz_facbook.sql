with 

source as (

    select * from {{ source('raw', 'raw_gz_facbook') }}

),

renamed as (

    select
        date_date,
        paid_source,
        campaign_key,
        campgn_name,
        CAST(ads_cost as FLOAT64) as ads_cost,
        impression,
        click

    from source

)

select * from renamed
