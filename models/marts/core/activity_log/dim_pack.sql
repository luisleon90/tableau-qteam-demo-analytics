with 

source as (

    select * from {{ ref('stg_org_chart_Packs') }}

),

renamed as (

    select
        pack_id,
        pack_name,
        pack_howl

    from source

)

select * from renamed
