-- noqa: disable=all
{% test same_total(as_rows_in, include, model, column_name) %}

with src as (
    select count(*) as count
    from {{ ref(as_rows_in) }}
    where {{ include }}
),

agg as (
    select sum( {{ column_name }} ) as sum from {{ model }}
)

select
    src.count,
    agg.sum,
    src.count - agg.sum as difference
from src, agg
where src.count <> agg.sum

{% endtest %}
