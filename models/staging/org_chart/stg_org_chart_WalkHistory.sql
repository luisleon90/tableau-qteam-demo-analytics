with 

source as (

    select * from {{ source('org_chart', 'WalkHistory') }}

),

renamed as (

    select
        walk_id,
        dog_id,
        walk_date,
        walk_leader,
        sniff_spots,
        potty_breaks,
        reason_for

    from source

)

select * from renamed
