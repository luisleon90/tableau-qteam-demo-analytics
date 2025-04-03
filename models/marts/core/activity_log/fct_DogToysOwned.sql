with 

source as (

    select * from {{ ref('stg_org_chart_DogToysOwned') }}

),

toys as (

    select * from {{ ref('stg_org_chart_toys') }}

),

renamed as (

    select
        source.employee_id,
        source.toy_id,
        source.acquired_date,
        toys.toy_name,
        toys.toy_description,
        source.favorite_status

    from source left join toys
    on toys.toy_id=source.toy_id

)

select * from renamed
