include: "./avg_weekly_sales_2.view"
view: avg_weekly_sales_2_switchable {
  extends: [avg_weekly_sales_2]
  sql_table_name: {% if _model._name == 'au' %}
    aerobic-datum-283623.looker_scratch.XT_au_avg_weekly_sales_2
  {% elsif countries.country._parameter_value == 'AU' %}
    aerobic-datum-283623.looker_scratch.XT_au_avg_weekly_sales_2
  {% else %}
    aerobic-datum-283623.looker_scratch.XT_us_avg_weekly_sales_2
  {% endif  %} ;;
}