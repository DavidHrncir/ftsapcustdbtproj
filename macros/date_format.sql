{% macro date_formatstr() %}
{% if target.type == 'databricks' %}'yyyyMMdd'
{% else %}'YYYYMMDD'
{% endif %}
{% endmacro %}
