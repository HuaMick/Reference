{% test same_sum(as_model, in_column, model, column_name) %}

with src as (
    select sum( {{ in_column }} ) as agg
    from {{ ref(as_model) }}
),

agg as (
    select sum( {{ column_name }} ) as agg
    from {{ model }}
)

select
    src.agg,
    agg.agg,
    src.agg - agg.agg as difference
from src, agg
where src.agg <> agg.agg

{% endtest %}
