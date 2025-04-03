with 

source as (

    select * from {{ source('org_chart', 'trainingclasses') }}

),

renamed as (

    select
        class_id,
        class_name,
        class_description
    from source

)

select * from renamed
