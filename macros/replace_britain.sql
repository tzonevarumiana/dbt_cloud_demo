{% macro replace_britain(column_name) %}
case
    when {{ column_name }} like 'Britain'
    then replace({{ column_name }}, 'Britain', 'United Kingdom')


    else {{ column_name }}
end
{% endmacro %}