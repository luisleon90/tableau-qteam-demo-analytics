with org_chart as (
    
    select * from {{ ref('stg_org_chart_Dogs') }}

),

final as (
    select 
        employee_id,
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


    from
        org_chart

)
select 
    *
from
    final
