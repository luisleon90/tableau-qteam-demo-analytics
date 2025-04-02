with 

source as (

    select * from {{ source('org_chart', 'DogToysOwned') }}

),

renamed as (

    select
        dog_id,
        toy_id,
        acquired_date,
        favorite_status

    from source

)

select * from renamed
