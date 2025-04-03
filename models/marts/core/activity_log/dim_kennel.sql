with 

source as (

    select * from {{ ref('stg_org_chart_Kennels') }}

),

renamed as (

    select
        kennel_id,
        kennel_name,
        kennel_address,
        city_where,
        state_where,
        zip_code_howl

    from source

)

select * from renamed
