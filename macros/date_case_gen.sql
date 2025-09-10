{% macro date_case_gen(col_name,alias_name) %}
CASE when {{col_name}} is null or {{col_name}} in (' ', '') 
or substring({{col_name}},0,1) in(0,3,4,5,6,7,8,9) 
THEN NULL ELSE 
{%- if target.type == 'databricks' -%} TO_DATE({{col_name}}, 'yyyyMMdd'
{%- elif target.type == 'bigquery' -%} PARSE_DATE('%Y%m%d', {{col_name}}
{%- else -%} TO_DATE({{col_name}}, 'YYYYMMDD'
{%- endif -%}
) END 
as {{alias_name}}
{% endmacro %}
