with 

source as (

    select * from {{ source('org_chart', 'BoneRatings') }}

),

renamed as (

    select
        rating_id,
        dog_id as employee_id,
        trick_id,
        rater_dog_id,
        rating_date,
        overall_paw_rating,
        tail_wags,
        treat_goals,
        rating_status

    from source

)

select * from renamed
