with 

source as (

    select * from {{ source('org_chart', 'DogTrainingEnrollment') }}

),

renamed as (

    select
        dog_id,
        class_id,
        completion_date,
        enrollment_status,
        notes_from_trainer

    from source

)

select * from renamed
