with 

source as (

    select * from {{ ref('stg_org_chart_DogTrainingEnrollment') }}

),

trainingclasses as (

    select * from {{ ref('stg_org_chart_training_classes') }}

),

renamed as (

    select
        source.employee_id,
        source.class_id,
        source.completion_date,
        source.enrollment_status,
        source.notes_from_trainer,
        trainingclasses.class_name,
        trainingclasses.class_description

    from source left join trainingclasses
    on source.class_id = trainingclasses.class_id

)

select * from renamed
