with 

source as (

    select * from {{ source('org_chart', 'DogTricks') }}

),

renamed as (

    select
        dog_id,
        trick_id,
        proficiency_level,
        last_practiced

    from source

)

select * from renamed
