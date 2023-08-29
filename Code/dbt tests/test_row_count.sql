{% test row_count(
  model,
  column_name,
  is,
  group_by=None
  ) %}

with src as (
    select
      {% if group_by %}
      {% for group_by in group_by -%}
      {{ group_by }} as col_{{ loop.index }},
      {% endfor -%}
      {% endif %}
      count(*) as row_count
    from {{ model }}
    {% if group_by %}
    group by
      {% for group_by in group_by -%}
        {{ group_by }}{% if not loop.last %},{% endif %}
      {% endfor -%}
      {% endif %}
)
select *
from src
where src.row_count <> {{ is }}

{% endtest %}
