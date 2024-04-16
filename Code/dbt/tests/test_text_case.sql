{% test text_case(is_of_type, model, column_name) %}

with src as (
    select
      {{ column_name }} as column_name,
      case
        when {{ '"' + is_of_type + '"' }} = "UPPERCASE" then upper({{ column_name }})
        when {{ '"' + is_of_type + '"' }} = "LOWERCASE" then lower({{ column_name }})
      end as desired_text_case
    from {{ model }}
)

select
    src.column_name,
    src.desired_text_case
from src
where src.column_name <> src.desired_text_case

{% endtest %}
