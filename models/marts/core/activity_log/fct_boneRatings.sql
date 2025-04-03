with 

source as (

    select * from {{ ref('stg_org_chart_BoneRatings') }}

),

renamed as (

    select
        rating_id,
        employee_id,
        rater_dog_id,
        rating_date,
        overall_paw_rating,
        tail_wags,
        treat_goals,
        rating_status

    from source

)

select * from renamed
