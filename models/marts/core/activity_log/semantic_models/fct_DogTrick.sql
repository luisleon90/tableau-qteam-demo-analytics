with 

source as (

    select * from {{ ref('stg_org_chart_DogTricks') }}

),

renamed as (

    select
        employee_id,
        trick_id,
        proficiency_level,
        last_practiced

    from source

)

select * from renamed
