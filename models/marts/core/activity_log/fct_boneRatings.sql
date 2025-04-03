with 

source as (

    select * from {{ ref('stg_org_chart_BoneRatings') }}

),

tricks as (

    select * from {{ ref('stg_org_chart_tricks') }}

),

renamed as (

    select
        source.rating_id,
        source.employee_id,
        source.rater_dog_id,
        source.trick_id,
        source.rating_date,
        source.overall_paw_rating,
        source.tail_wags,
        source.treat_goals,
        source.rating_status,
        tricks.trick_description

    from source left join tricks
    on source.trick_id = tricks.trick_id

)

select * from renamed
