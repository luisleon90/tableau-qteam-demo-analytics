with activity_log as (
    
    select * from {{ ref('stg_activity_log') }}

),
org_chart as (
    
    select * from {{ ref('stg_org_chart') }}

),
final as (
    select 
        

    from
        activity_log
        left join org_chart
            on activity_log.actor_id = org_chart.actor_id 
)
select 
    *
from
    final
order by
    order_date