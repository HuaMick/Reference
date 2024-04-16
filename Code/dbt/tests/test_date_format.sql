{% test date_format(is_of_format, model, column_name) %}

with src as (
    select
      {{ column_name }} as column_name,
      case
        when {{ '"' + is_of_format + '"' }} = "%d %b %Y"
          then SAFE.PARSE_DATE('%d %b %Y', {{ column_name }})
      end as parsed_date_as_format
    from {{ model }}
)

select
    src.column_name,
    src.parsed_date_as_format
from src
where src.parsed_date_as_format is null

{% endtest %}
