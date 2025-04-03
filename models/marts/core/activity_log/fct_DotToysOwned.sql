with 

source as (

    select * from {{ ref('stg_org_chart_DogToysOwned') }}

),

renamed as (

    select
        employee_id,
        toy_id,
        acquired_date,
        favorite_status

    from source

)

select * from renamed
