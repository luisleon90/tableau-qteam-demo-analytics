with 

source as (

    select * from {{ source('activity_log', 'org_chart') }}

),

renamed as (

    select
        employee_id,
        employee_name,
        department_name,
        department_id,
        years_of_experience as employee_tenure,
        direct_boss as boss_employee_id
    from source

)

select * from renamed
