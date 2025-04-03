with 

source as (

    select * from {{ ref('stg_org_chart_WalkHistory') }}

),

renamed as (

    select
        walk_id,
        employee_id,
        walk_date,
        walk_leader,
        sniff_spots,
        potty_breaks,
        reason_for

    from source

)

select * from renamed
