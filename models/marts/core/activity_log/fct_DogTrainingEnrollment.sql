with 

source as (

    select * from {{ ref('stg_org_chart_DogTrainingEnrollment') }}

),

renamed as (

    select
        employee_id,
        class_id,
        completion_date,
        enrollment_status,
        notes_from_trainer

    from source

)

select * from renamed
