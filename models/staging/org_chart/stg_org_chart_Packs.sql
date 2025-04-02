with 

source as (

    select * from {{ source('org_chart', 'Packs') }}

),

renamed as (

    select
        pack_id,
        pack_name,
        pack_howl

    from source

)

select * from renamed
