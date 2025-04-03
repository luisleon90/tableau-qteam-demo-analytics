with 

source as (

    select * from {{ source('org_chart', 'toys') }}

),

renamed as (

    select
        toy_id,
        toy_name,
        toy_description
    from source

)

select * from renamed
