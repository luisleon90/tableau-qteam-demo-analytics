with 

source as (

    select * from {{ source('org_chart', 'tricks') }}

),

renamed as (

    select
        trick_id,
        trick_description

    from source

)

select * from renamed
