with activity_log as (
    
    select * from {{ ref('stg_activity_log') }}

),

final as (
    select 
        actor_id,
        activity_log_id,
        tableau_endpoint_name,
        event_result,
        event_result_reason,
        event_time,
        employee_id,
        initiating_user_luid,
        initiating_user_email,
        initiating_user_role,
        ip_address,
        method,
        referrer_url,
        request_id,
        request_uri,
        service_name,
        session_id,
        site_luid,
        site_name,
        site_uri,
        trace_uuid,
        user_agent,
        view_id,
        view_name,
        view_repo_url,
        vizql_session_id,
        workbook_id,
        workbook_name,
        page_visit_duraiton,
        records_per_event,
        workbook_revision

    from
        activity_log

)
select 
    *
from
    final
