{% test is_non_negative(model, column_name) %}

select *
from {{ model }}
where {{ column_name }} < 0

{% endtest %}


{% test matches_pattern(model, column_name, pattern) %}

select *
from {{ model }}
where {{ column_name }} is not null
  and not regexp_contains(cast({{ column_name }} as string), r'{{ pattern }}')

{% endtest %}



{% test is_not_in_future(model, column_name) %}

select *
from {{ model }}
where {{ column_name }} > current_date()

{% endtest %}
