{% macro date_case_gen(col_name,alias_name) %}
CASE when {{col_name}} is null or {{col_name}} in (' ', '') 
or substring({{col_name}},0,1) in(0,3,4,5,6,7,8,9) 
THEN NULL ELSE TO_DATE({{col_name}}, 
{% if target.type == 'databricks' %}'yyyyMMdd'
{% else %}'YYYYMMDD'
{% endif %}
) END 
as {{alias_name}}
{% endmacro %}
