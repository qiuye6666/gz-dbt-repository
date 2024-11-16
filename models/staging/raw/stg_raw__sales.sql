with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        CAST (ptd_id AS STRING) AS products_id
        revenue,
        quantity

    from source

)

select * from renamed
