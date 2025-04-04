{% set regions =  ['activity_log', 'activity_log_emea', 'activity_log_apj'] %}

{% for region in regions %}
  select 
      *,
      '{{ region }}' as activity_log_region
  from {{ source('activity_log', region) }}
{% if not loop.last -%} union all {%- endif %}
{% endfor %}

