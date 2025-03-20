with 

source as (

    select * from {{ source('activity_log', 'activity_log') }}

),

renamed as (

    select
        actor_user_luid as actor_id,
        Document_Index_generated as activity_log_id,
        Endpoint_Name as tableau_endpoint_name,
        Event_Outcome as event_result,
        Event_Outcome_Reason as event_result_reason,
        Event_Time,
        Initiating_User_Id as employee_id,
        Initiating_User_Luid,
        initiatingUserEmail as initiating_User_Email,
        licensingRoleName as initiating_User_Role,
        Ip_Address,
        Method,
        Referrer as referrer_url,
        Request_Id,
        Request_Uri,
        Service_Name,
        Session_Id,
        Site_Luid,
        Site_Name,
        Site_Uri,
        Trace_Uuid,
        User_Agent,
        View_Id,
        View_Name,
        View_Repo_Url,
        Vizql_Session_Id,
        Workbook_Id,
        Workbook_Name,
        Duration as page_visit_duraiton,
        Number_of_Records_per_vizqlserver as records_per_event,
        Workbook_Revision
    from source

)

select * from renamed
