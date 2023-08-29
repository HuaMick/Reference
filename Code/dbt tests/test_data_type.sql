{% test data_type(is, model, column_name) %}

with src as (
    select
      {{ column_name }} as column_name,
      safe_cast ({{ column_name }} as {{ is }}) as cast_as_type
    from {{ model }}
)

select
    src.column_name,
    src.cast_as_type
from src
where src.cast_as_type is null

{% endtest %}
