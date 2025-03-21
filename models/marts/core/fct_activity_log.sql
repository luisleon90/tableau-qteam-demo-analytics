with activity_log as (
    
    select * from {{ ref('stg_activity_log') }}

),
org_chart as (
    
    select * from {{ ref('stg_org_chart') }}

),
final as (
    select 
        activity_log.actor_id,
        activity_log.activity_log_id,
        activity_log.tableau_endpoint_name,
        activity_log.event_result,
        activity_log.event_result_reason,
        activity_log.event_time,
        activity_log.employee_id,
        activity_log.initiating_user_luid,
        activity_log.initiating_user_email,
        activity_log.initiating_user_role,
        activity_log.ip_address,
        activity_log.method,
        activity_log.referrer_url,
        activity_log.request_id,
        activity_log.request_uri,
        activity_log.service_name,
        activity_log.session_id,
        activity_log.site_luid,
        activity_log.site_name,
        activity_log.site_uri,
        activity_log.trace_uuid,
        activity_log.user_agent,
        activity_log.view_id,
        activity_log.view_name,
        activity_log.view_repo_url,
        activity_log.vizql_session_id,
        activity_log.workbook_id,
        activity_log.workbook_name,
        activity_log.page_visit_duraiton,
        activity_log.records_per_event,
        activity_log.workbook_revision,
        org_chart.employee_name,
        org_chart.department_name,
        org_chart.department_id,
        org_chart.employee_tenure,
        org_chart.boss_employee_id

    from
        activity_log
        inner join org_chart
            on activity_log.employee_id = org_chart.employee_id 
)
select 
    *
from
    final
