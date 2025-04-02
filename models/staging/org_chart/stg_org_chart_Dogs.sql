with 

source as (

    select * from {{ source('org_chart', 'Dogs') }}

),

renamed as (

    select
        dog_id as employee_id,
        bark_name,
        breed_title,
        pack_department,
        top_dog_id,
        email_sniff,
        phone_howl,
        adoption_date,
        departure_date,
        kennel_id,
        pack_id,
        created_at,
        updated_at

    from source

)

select * from renamed
