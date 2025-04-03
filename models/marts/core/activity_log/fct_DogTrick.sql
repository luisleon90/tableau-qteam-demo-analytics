with 

source as (

    select * from {{ ref('stg_org_chart_DogTricks') }}

),

tricks as (

    select * from {{ ref('stg_org_chart_tricks') }}

),

renamed as (

    select
        source.performance_id,
        source.employee_id,
        source.trick_id,
        source.proficiency_level,
        source.last_practiced,
        tricks.trick_description

    from source left join tricks
    on source.trick_id = tricks.trick_id

)

select * from renamed
