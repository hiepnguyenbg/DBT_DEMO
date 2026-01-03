{% macro get_season(x) %}
CASE 
WHEN MONTH(TO_TIMESTAMP({{x}})) = 12 OR MONTH(TO_TIMESTAMP({{x}})) < 3 THEN 'WINTER'
WHEN MONTH(TO_TIMESTAMP({{x}})) < 6 THEN 'SPRING'
WHEN MONTH(TO_TIMESTAMP({{x}})) < 9 THEN 'SUMMER'
ELSE 'AUTUMN'
END
{% endmacro %}



{% macro day_type(x) %}
    CASE
    WHEN DAYNAME(TO_TIMESTAMP({{x}})) in ('Sat', 'Sun')
    THEN 'WEEKEND'
    ELSE 'BUSINESDAY'
    END

{%endmacro%}